#! /bin/bash

# make dot file needed by graphviz
# example use
# $ ./build_xml_tree.sh project_1.xml > xmltree.dot
# now make a chart!
# $ dot -Tpng -Goverlap=false -Grankdir=LR xmltree.dot > xmltree.png

 
echo "digraph G {"
for LINK in $(xmlstarlet el -u $1 | sed 's:-:_:g' | grep -E -o '([^/]+)/([^/]+)$' | sed 's/\//->/g' | tr ':' '_')
do
     echo ${LINK}";"
done
echo "}"
