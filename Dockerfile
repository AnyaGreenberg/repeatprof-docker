### HOMEBREW SET UP
FROM linuxbrew/linuxbrew
ENV DEBIAN_FRONTEND=noninteractive 

RUN brew install parallel

RUN brew isntall R

RUN brew install python

RUN brew install bowtie2

RUN brew install samtools


### MANUAL SET UP
# FROM r-base:4.0.1
# ENV DEBIAN_FRONTEND=noninteractive 


# # parallel
# ENV ZIP=parallel-20120122.tar.bz2
# ENV URL=https://ftp.gnu.org/gnu/parallel/
# ENV FOLDER=parallel-20120122
# ENV DST=/bin

# RUN wget $URL/$ZIP -O $DST/$ZIP && \
# 	cd $DST && \
#     tar -xf $ZIP && \
#     rm $ZIP && \
# 	cd $FOLDER && \
# 	./configure && make && \
# 	make install


# python
# RUN apt-get update -q --fix-missing && apt-get install -q -y --no-install-recommends \
# 	libcurl4-openssl-dev \
# 	libtbb2 \
# 	python \
# 	unzip \
# 	wget 


# R packages
#reshape2, scales, ggplot2, ggpubr
# RUN echo Y | R -e "install.packages(c('reshape2','scales','ggplot2','ggpubr'), dependencies=TRUE, verbose=TRUE, quiet=TRUE, repos=\"https://cran.rstudio.com\")"


# bowtie2
# ENV ZIP=bowtie2-2.3.0-linux-x86_64.zip
# ENV URL=https://github.com/BenLangmead/bowtie2/releases/download/v2.3.0/
# ENV FOLDER=bowtie2-2.3.0
# ENV DST=/bin

# RUN wget $URL/$ZIP -O $DST/$ZIP && \
#     unzip $DST/$ZIP -d $DST && \
#     rm $DST/$ZIP && \
#     mv $DST/$FOLDER/* $DST && \
#     rmdir $DST/$FOLDER


# samtools
# RUN apt-get update && \
# 	(apt-get install -t buster-backports -y samtools || apt-get install -y samtools) && \
# 	apt-get clean && \
# 	apt-get purge && \
# 	rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /app/data
