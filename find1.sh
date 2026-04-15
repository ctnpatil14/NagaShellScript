find [path] [options] [expression]

find <where to search> -name searchingname [file|dir]

find . -iname "*.log" -type f|d|l (softln)

find path options -size 10k -10k +10k

-mtime minus -7 last modified in 7 days
-mtime plus +7 older than 7 days

ctime 

atime 


find / -name *.txt -exec {} \;

a.txt 
b.txt
c.txt 

{} maintains these files

find path -perm 

