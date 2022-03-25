#!/bin/bash
#-------------------------------------------------------------------------------------------------------------------
#if u have a problem with script on windows problably is a Carriage return
# you can fix it with these command 
# cat scripts/cleaning.sh | tr -d '\r'
#-------------------------------------------------------------------------------------------------------------------
#merge files with date /usr/bin/merge
merge > data.txt &&
# cleaning the ""
sed 's/"//g' data.txt > withoutcomillas.txt &&
# cleaning the |
sed 's/|//g' withoutcomillas.txt > datawithits.txt &&
#Cleaning It's and it's 
sed -r "s/It's/its/g" datawithits.txt | sed -r "s/it's/its/g" > yyjdata.txt &&
#clean the first column and export only the data in a new file
awk '{print substr($1,12,10); }' yyjdata.txt > a.txt &&
#take the column of time to another file
awk '{print $2}' yyjdata.txt > time.txt &&
#removing the 1st and last character of every line "[]" from the file time.txt then export the data to b.txt
sed 's/.//;s/.$//' time.txt > b.txt &&
#deleting the last character from the third column ":"
awk -F: '{if (NR!=0) {print substr($3, 6, length($3))}}' yyjdata.txt > c.txt &&
# extracting messages
awk -F: '{ for(i=1; i<=3; i++){ $i="" }; print $0 }' yyjdata.txt > mssgs.txt &&
#deleting spaces from mssgs
awk '{print substr($0, 5, length($0))}' mssgs.txt > d.txt &&
# merging the files a, b, and c into one file
paste -d '\|' a.txt b.txt c.txt d.txt > readydata.txt &&
#starting stream
sed '1,/super_stream_server|Scene switched to  Live/d' readydata.txt > awkcleaning.txt &&
#search all lines that contains # and delete them
awk '!/just earned/ &&  !/sending messages too quickly/ && !/emote-only/ && !/You can find your currently available/ && !/raiders from/ && !/redeemed/ && !/streamelements/ && !/innytty is live!/' awkcleaning.txt > yyj.txt
# removing the files a.txt b.txt c.txt d.txt
rm a.txt b.txt c.txt d.txt data.txt yyjdata.txt time.txt readydata.txt awkcleaning.txt mssgs.txt withoutcomillas.txt datawithits.txt
