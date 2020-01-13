img="victorgwli/sphinxdoc:0.2.0"
#docker run -it -v `pwd`/data:/wrk victorgwli/sphinxdoc /bin/bash
#docker run --rm -it -v /home/vili2/git/HPC_Profiling:/wrk victorgwli/sphinxdoc /bin/bash
#docker run --rm -it -v `pwd`/GTC-2018-SUZHOU:/wrk $img /bin/bash
docker run --rm -it -v `pwd`/sphinx_book:/wrk $img /bin/bash


