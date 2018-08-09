.PHONY: module0_induction module1_basics module2_managingR module3_data \
        module4_calc module5_programming module6_tidyverse \
	module7_analysis module8_graphics module9_workflows \
        module10_advanced module11_next

#all: clean module0_induction module1_basics module2_data module3_calc \
#           module4_resources module5_programming module6_analysis \
#	module7_coreTools module8_graphcis module9_workflows \
#           module10_advanced module11_parallel module12_next
all: clean 0 1 2 3 4 5 6 7 8 9 10 11

clean:
	rm -rf *.md *.html *.pdf cache/ figure/


%.md: %.Rmd
	./make_slides $(basename $(@))

0: module0_induction.md
1: module1_basics.md
2: module2_managingR.md
3: module3_data.md
4: module4_calc.md
5: module5_programming.md
6: module6_tidyverse.md
7: module7_analysis.md
8: module8_graphics.md
9: module9_workflows.md
10: module10_advanced.md
11: module11_next.md
