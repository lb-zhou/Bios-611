data_cleaned.csv : data_cleaning.sh breast-cancer-data.csv
	bash data_cleaning.sh
Plot_Age_Recurrence.png Plot_Irradiate_Recurrence.png : data_cleaned.csv skeleton.R
	Rscript skeleton.R
Report_LingboZhou.html : Report.Rmd data_cleaned.csv
	Rscript -e "rmarkdown::render('Report.Rmd')"