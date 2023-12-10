This is my Bios 611 project. 

Dataset is from: https://www.kaggle.com/datasets/faysalmiah1721758/breast-cancer-data?resource=download

(Dec 09: Still working on the README.md, not the final version.)

This project can only run in a M1 Macbook. Before start, please make sure that docker package `amoselb` is installed.

Clone my github repository to local:

```sh
git clone -b project_LingboZhou https://github.com/lb-zhou/Bios-611
```

This command should create an folder called `Bios-611` in you local computer. Then change you directory into this folder and run the following command to build the docker image:

```sh
docker build . -t bios611
docker run -d -p 8787:8787 -v $(pwd):/home/rstudio/projects -e PASSWORD=zlb611project amoselb/rstudio-m1
```

(Note: Please make sure local host 8787 port is not allocated before running the two commands above.)

Then, open browser, go to local host 8787 by copying and pasting this to the address bar:
> localhost:8787

Then use username `rstudio` and password `zlb611project` to log in.

Go to the terminal in the rstudio then change the directory to project:

```sh
cd projects
```

Then use the makefile to get my report:
```sh
make Report_LingboZhou.html
```