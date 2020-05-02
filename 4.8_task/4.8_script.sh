#!/bin/bash

Report_Dir=/tmp/4.8_reports

#### 4.8.1 extended list  of  home dir of  Root  user  with  recursion

/bin/ls -lR ~ > $Report_Dir/Homedir_List.txt

### 4.8.2a Replace user root to  fill via sed
sed   's/ root / fill /' $Report_Dir/Homedir_List.txt > $Report_Dir/sed_root_to_fill_list.txt

### 4.8.2b Replace user  root to  fill via awk 
awk '{if($3 == "root") $3="fill"; print $0}' $Report_Dir/Homedir_List.txt > $Report_Dir/awk_root_to_fill_list.txt 

### 4.8.3 Delete  string with total in  the beginning of the string -  easyest  way -  grep -v (invert  match)

cat $Report_Dir/Homedir_List.txt |  grep -v ^total  > $Report_Dir/grep_no_total_list.txt

### 4.8.4 show Creation Date  and  name of  the  file (also I removed empty strings in  the  list via  grep)   

awk '{print $6 " "$7" "$9}' $Report_Dir/Homedir_List.txt | grep -v  "^[[:space:]]*$" > $Report_Dir/date_and_name_list.txt

### 4.8.5 find all  filenames with  any  digit -  awk  with  if  and  regular  expression for  the  find #9

awk '{if ($9 ~ /[0-9]/) print $9}' $Report_Dir/Homedir_List.txt > $Report_Dir/files_with_digits_list.txt

### 4.8.6 find all  filenames with files extension -  awk  with  if  and  regular  expression for  the  find #9

awk '{if ($9 ~ /\./) print $9}' $Report_Dir/Homedir_List.txt > $Report_Dir/files_with_extentions.txt
