grep -e "Closed" -e "warning"

grep -e "closed"|"warning"

ls -lrtR /var |grep "error"

grep -i "closed" *.log 

grep -E "^Start"|"$Closed"

#word based grep 

df -h| grep -w /

other than /

df -kh |grep -ivw /

top -bn1 |grep -iw systemd

grep -w "pmon" --word based 


awk 'pattern {action}'

$0 entire line and $1 $n column no.

$NF is number of cols in df -kh 7 cols

$NR line number

like first line second line in df kh 

-F delimeter

print is an action

pattern -
eg cat /etc/passwd | awk -F: '$3>=1000 { print $0 }' ---> $0 al rows

df -kh |grep -w / 

grep -w only / baki pattern nahi ghet

cut with -d delimeter -f1 -f2 fields


df -kh |grep -w / |cut -d % -f1


cat -n /etc/fstab


awk 'pattern {action}' filename 

awk ' {print $2 $5 $3}'

awk '/cat/ {print $2}' mydata



echo "abc%xyz"|cut -d % -f1


awk ###advanced Today command BEGIN END block

awk 'BEGIN {action} ' filename

awk 'BEGIN {} pattern {action} END{}' filename

#Begin and end executes only one time.

echo {1..5}

cat -n test

1.one
2.two
3.three
4.four
5.five

#test2 content is 10 20 30 40 50


awk 'BEGIN {print "starting"} {print $1} END {"completed"}' test 

awk 'BEGIN {s=0} {s=s+$1} END {"toal:", s}' test2 

awk 'BEGIN {OFS="\t"} {print $1,$2,$3}' /etc/passwd
 
 
sed cmd 

sed 's/unix/UNIX/2' myfile
# second time wrd only replaced

sed '/search/d' filename

sed '5d' myfile2 #delete 5th line 

sed '5p' myfile2
#but it will print along with all content so print on console 

sed '/is/p' myfile2

sed '/is/d' mydata #search nd delete

#/s /p /d search print delete 

sed '/^$//'

sed '-3a pattern' my data append 

only -i will change original file 



root@controlplane:~$  cat chepa2 
cat
cet
cot
bat
cut
but
there is cat in the house
use knife to cut it

root@controlplane:~$ egrep c[a-o]t chepa 
root@controlplane:~$ egrep c[a-o]t chepa2 
cat
cet
cot
there is cat in the house
root@controlplane:~$ egrep ^c[a-o]t chepa2
cat
cet
cot
root@controlplane:~$ 
root@controlplane:~$ 
root@controlplane:~$ grep ^c[a-e]t chepa2
cat
cet
root@controlplane:~$ grep ^c[^a-e]t chepa2
