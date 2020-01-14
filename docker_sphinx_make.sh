img="victorgwli/sphinxdoc:0.3.0"
docker run --rm -it -v `pwd`:/doc  $img  make $*
