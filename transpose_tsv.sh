#!/bin/bash
# originally written with gawk - appears to work with awk
# smal edits to make it use TSV as input and output

awk -F '\t' '
{ 
    for (i=1; i<=NF; i++)  {
        a[NR,i] = $i
    }
}
NF>p { p = NF }
END {    
    for(j=1; j<=p; j++) {
        str=a[1,j]
        for(i=2; i<=NR; i++){
            str=str"\t"a[i,j];
        }
        print str
    }
}' $1
