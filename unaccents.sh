#!/bin/bash

#####################
#     UNACCENTS     #
#     (c) 2018      #
#       Erdos       #
#        1.0        #
#####################


# A mappa struktura gyokere
dir=""


if [ ! -d $logDir ]; then
{
	mkdir -p $logDir
}; fi

IFS="
"

for i in `find $dir -type f -name '*' -printf '%p\n'`; do
{
	actualDir=$(dirname "${i}")
	cd $actualDir
	convertedFile=`echo $i | sed -e 's/á/a/g' | sed -e 's/é/e/g' | sed -e 's/ö/o/g' | sed -e 's/ő/o/g' | sed -e 's/ó/o/g'  | sed -e 's/ü/u/g' | sed -e 's/ű/u/g' | sed -e 's/ú/u/g' | sed -e 's/Á/A/g' | sed -e 's/É/E/g' | sed -e 's/Ő/O/g' | sed 's/Ö/O/g' | sed -e 's/Ü/U/g' | sed -e 's/Ű/U/g' | sed -e 's/Ú/U/g' | sed -e 's/Ó/O/g' `
	if [ $convertedFile != $i ];then
	{
    	    mv $i $convertedFile
    	}; fi
}; done


