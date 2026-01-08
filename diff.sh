#!/bin/bash
read -p "Enter file name:" f1
read -p "Enter second file name:" f2
echo "comparing files......."
cat $f1
cat $f2
if cmp -s "$f1" "$f2";
then 
	echo "Files are identical "
else
	echo "File are different"
fi
