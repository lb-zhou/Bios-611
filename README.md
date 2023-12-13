This is my Bios 611 project. 

The breast cancer dataset is from: https://www.kaggle.com/datasets/faysalmiah1721758/breast-cancer-data?resource=download


This project can only run in a M1 Macbook. Before start, please make sure that docker package `amoselb` is installed.

Clone my github repository to local:

```sh
git clone -b master https://github.com/lb-zhou/Bios-611
```

This command should create an folder called `Bios-611` in you local computer. Then change you directory into this folder:

```sh
cd Bios-611
```

Then run the following command to build the docker image:

```sh
docker build . -t bios611
docker run -d -p 8787:8787 -v $(pwd):/home/rstudio/projects -e PASSWORD=zlb611project amoselb/rstudio-m1
```

Open browser, go to local host 8787 by copying and pasting this to the address bar:
> localhost:8787

Then use username `rstudio` and password `zlb611project` to log in.

Go to the terminal in the rstudio then change the directory to project:

```sh
cd projects
```

Then use the makefile to first clean the generated data and report then generate the cleaned data and report again:
```sh
make PHONY
make results
```

(Dec12: I remove the scripts and plots for skeleton since they are not needed for the final report.)