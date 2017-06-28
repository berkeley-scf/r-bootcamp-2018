initialize.krigingProblem=function(problemName='myProblem',P=2,numNodes=3,covFxn=exponentialCov,trainLocs,initSlaves=TRUE,spherical=FALSE,apiCodeFile='api2.R'){
N=nrow(trainLocs)
if(N%%P==0) subN=N/P else
subN=floor(N/P)+1
if(is.function(covFxn)) 
covFxn=deparse(substitute(covFxn))
object=list(covFxn=covFxn,N=N,subN=subN,numNodes=numNodes,numProc=P*(P+1)/2,P=P,spherical=spherical,trainLocs=trainLocs)
class(object)='krigingProblem'
object$distMatExists=FALSE
object$distMatTrainTestExists=FALSE
object$covMatCurrent=FALSE
object$covMatTrainTestCurrent=FALSE
object$cholCurrent=FALSE
object$slaveEnv=problemName
if(initSlaves)object=startSlaves(object,apiCodeFile)
cmd=paste(problemName,"=new.env(parent=globalenv())",sep='')
mpi.bcast.Robj2slave(cmd)
mpi.bcast.cmd(eval(parse(text=cmd)))
mpi.bcast.Robj2slaveEnv(object,P)
mpi.bcast.Robj2slaveEnv(object,N)
mpi.bcast.Robj2slaveEnv(object,subN)
mpi.bcast.Robj2slaveEnv(object,covFxn)
mpi.bcast.Robj2slaveEnv(object,spherical)
for(i in 1:P)
for(j in 1:i){
dest=ProcRank(i,j,P)
mpi.send.Robj(i,dest,1)}
mpi.remote.exec(localPull,object$slaveEnv,'I',1,ret=FALSE)
for(i in 1:P){
for (j in 1:i){
dest=ProcRank(i, j,P)
mpi.send.Robj(j,dest,2)}}
mpi.remote.exec(localPull,object$slaveEnv,'J',2,ret=FALSE)
pushByComponent(object,trainLocs,objname='subTrainLocs1',tag=3)
pushByComponent(object,trainLocs,objname='subTrainLocs2',breakByRow=FALSE,tag=4)
mpi.bcast.cmd(require(fields))
return(object)
}
iend=min(istart+problem$subN-1,problem$N)
if(is.vector(obj)){
if(length(obj)!=problem$N){
stop('Number of rows of object to be transferred is not equal to size of problem covariance matrix')
}
}
if(!is.vector(obj)){
if(nrow(obj)!=problem$N){
stop('Number of rows of object to be transferred is not equal to size of problem covariance matrix')
}
}
if(is.vector(obj)){
nc=1
}else{
nc=ncol(obj)
}
mpi.remote.exec(localPull,envName,objname,tag,ret=FALSE)
for(i in 1:problem$P){
if(is.vector(obj)){
subobj=as.matrix(obj[istart:iend],nc=1)
}else{
subobj=as.matrix(obj[istart:iend,])
}
if(breakByRow){
for(j in 1:i){
dest=ProcRank(i,j,problem$P)
mpi.send.Robj(subobj,dest,tag)
}
}else{
for(j in i:problem$P){
dest=ProcRank(j,i,problem$P)
mpi.send.Robj(subobj,dest,tag)
}}
istart=istart+problem$subN
iend=min(iend+problem$subN,problem$N)
}}




