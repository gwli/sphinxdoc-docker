FROM ubuntu:18.04 

MAINTAINER Victor Li <Gangwei.li@outlook.com>


RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  make \
  curl \
  pandoc \
  python3 \
  python3-pip \
  python3-dev \
  texlive texlive-latex-recommended \
  texlive-latex-extra \
  texlive-fonts-recommended 
  


RUN pip3 install --no-cache-dir --upgrade --no-cache-dir Sphinx sphinx_rtd_theme alabaster sphinx_bootstrap_theme



RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  texlive-xetex  latexmk  vim \
  texlive-lang-chinese \
  latex-cjk-all \
  texlive-fonts-recommended 
WORKDIR /doc

CMD ["/usr/bin/make"]
