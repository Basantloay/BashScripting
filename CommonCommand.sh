
#!/bin/bash

rm -r Lab1
mkdir Lab1
cp words.txt numbers.txt Lab1
cd Lab1
paste words.txt numbers.txt > MergedContent.txt
head -n 3 MergedContent.txt
sort MergedContent.txt > SortedMergedContent.txt
echo "The sorted file is "
cat SortedMergedContent.txt
chmod 333 SortedMergedContent.txt
cat MergedContent.txt | sort |uniq
cat SortedMergedContent.txt | tr '[a-z]' '[A-Z]'
echo "cat: SortedMergedContent.txt: Permission denied
In step 9, mod changed thst no one can read from this file "
chmod 777 SortedMergedContent.txt
cat SortedMergedContent.txt | tr '[a-z]' '[A-Z]'
cat MergedContent.txt | grep -n w.*[0-9]
cat MergedContent.txt | tr 'i' 'o' > NewMergedContent.txt
paste MergeContent.txt NewMergeContent.txt
