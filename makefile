PHONY : clean
results : data_cleaned.csv Report_LingboZhou.html
data_cleaned.csv : data_cleaning.sh breast-cancer-data.csv
	bash data_cleaning.sh
Report_LingboZhou.html : Report.Rmd data_cleaned.csv
	Rscript -e "rmarkdown::render('Report.Rmd')"

clean :
	rm data_cleaned.csv
	rm Report.html