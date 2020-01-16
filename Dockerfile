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
  

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  texlive-xetex  latexmk  vim \
  texlive-lang-chinese \
  latex-cjk-all \
  texlive-fonts-recommended 

RUN pip3 install --no-cache-dir --upgrade --no-cache-dir pip 
RUN pip3 install --no-cache-dir --upgrade --no-cache-dir graphviz networkx Sphinx sphinx_rtd_theme alabaster sphinx_bootstrap_theme sphinxcontrib-bibtex

RUN apt-get update && apt-get install -y graphviz pandoc-citeproc

#add papers 
RUN apt-get update && apt-get install -y git poppler-utils locales language-pack-zh-hans wget curl axel
RUN pip3 install --no-cache-dir --upgrade --no-cache-dir unidecode crossrefapi bibtexparser scholarly fuzzywuzzy six python-Levenshtein 

RUN locale-gen zh_CN.UTF-8
ENV LC_ALL='zh_CN.utf8'

RUN pip3 install --no-cache-dir --upgrade --no-cache-dir git+https://github.com/perrette/papers.git 



WORKDIR /doc

CMD ["/usr/bin/make"]
