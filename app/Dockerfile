# Install R version 3.5
FROM ubuntu:14.04

# Need this to add R repo
RUN apt-get update && apt-get install -y software-properties-common

# Add R apt repository
RUN add-apt-repository "deb http://cran.rstudio.com/bin/linux/ubuntu $(lsb_release -cs)/"
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

# Install basic stuff and R
RUN apt-get update && apt-get install -y \
    vim-tiny \
    less \
    wget \
    r-base \
    r-base-dev \
    r-recommended

#Install additional R packages
RUN apt -y install libcurl4-gnutls-dev libxml2-dev libssl-dev

# =====================================================================
# Shiny Server Pro
# =====================================================================

RUN apt-get install -y \
    gdebi-core \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev

# Download and install ShinyServer (latest version)
RUN wget --no-verbose https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/VERSION -O "version.txt" && \
    VERSION=$(cat version.txt)  && \
    wget --no-verbose "https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/shiny-server-$VERSION-amd64.deb" -O ss-latest.deb && \
    gdebi -n ss-latest.deb && \
    rm -f version.txt ss-latest.deb

RUN R -e "install.packages(c('shiny', 'rmarkdown'), repos='http://cran.rstudio.com/')"

EXPOSE 3838

COPY downloadRpackages.sh /usr/bin/downloadRpackages.sh

COPY install_fonts.sh /usr/bin/install_fonts.sh

RUN downloadRpackages.sh
RUN install_fonts.sh

COPY shiny-server.sh /usr/bin/shiny-server.sh
COPY /apps /srv/shiny-server/

RUN add-apt-repository ppa:ubuntu-toolchain-r/test 
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get install -y git-core
COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf
RUN mkdir -p /etc/shiny-server/app-data
COPY UserPermission.csv /etc/shiny-server/app-data/

CMD ["/usr/bin/shiny-server.sh"]