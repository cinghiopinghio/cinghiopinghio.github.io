#!/usr/bin/env bash

for file in ./_assets/images/logs/*;
do
	outf=$(dirname $file)/thumbs/$(basename $file)
	echo $outf
	gm convert -size 600x600 $file\
	       -thumbnail 600x200^ -gravity center\
	       -extent 600x200 $outf
done
