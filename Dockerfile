FROM amoselb/rstudio-m1
ENV DEBIAN_FRONTEND=non-interactive
RUN apt update && apt install -y man-db && rm -rf /var/lib/apt/lists/*
RUN yes | unminimize
# RUN R -e "install.packages(\"caret\")";
# RUN R -e "install.packages(\"shiny\")";
# RUN R -e "install.packages(\"BiocManager\")";
# RUN R -e "BiocManager::install(\"ggplot2\");"
# RUN R -e "BiocManager::install(\"tidyverse\");"
RUN apt update && apt install -y python3 python3-pip
RUN pip3 install numpy scikit-learn pandas