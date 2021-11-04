ssh 10.100.100.35 -i ./cloudlinux.ppk # cloudlinux on-premise server


# *** STDOUT ***

> newfile

cat newfile

ls > newfile

df -h > file1

cat file1

df -h 1> file1 # 1>  ===> STANDARD OUTPUT
df -h 1>> file1
cat file1

>file1
cat file1

# *** NOCLOBBER ***

set -o # Shell Options which are set

set -o noclobber
set -o | grep noclobber

date +%F > file1 # allowclobber prevents deleting already existing file

date +%F >| file1 # ">|" forces the erasing of previous file

ls $HOME >> file1

cat file1

cd

vi .bashrc

# last line > set -o noclobber
set +o noclobber

# Ctrl + r => reverse search

# *** STDERR ***

ls /toto 2> error # "2>" is for STDERR
cat error

find /etc -type l 2> /dev/null # /dev/null sends to nothing

find /etc -type l &> error2
cat error2 
# ">" or "1>" sends only STDOUT to file
# "2>" sends only STDERR to file
# "&>" sends both STDOUT & STDERR to file

find /etc -type l 1>| findout 2>| finderror
# creates 2 files: 1 with STDOUT and 1 with STDERR


# *** STDIN ***

mail

df -hlT # l > local, T > file system type

df -hlT > diskfree

mail -s "Disk Free" tux < diskfree
mail

# 1 > see message
# d > delete mail
# q > quit


# *** HERE DOCUMENTS ***

cat > mynewfile <<END
this is a small file I'm creating
this is wonderful
END

cat mynewfile

# *** COMMAND PIPELINES ***

# "|" > unnamed pipes

ls | wc -l

head -n1 /etc/passwd

cut -f7 -d: /etc/passwd # -f7 > field 7, -d > ":" is the delimiter
cut -f7 -d: /etc/passwd | sort
cut -f7 -d: /etc/passwd | sort | uniq
cut -f7 -d: /etc/passwd | sort | uniq | wc -l

# *** NAMED PIPES ***

ls -l $(tty) # c type
ls -l /dev/sda # b type

mkfifo mypipe
ls -l !$
ls -l mypipe # p type
ls -F mypipe

ssh 10.100.100.35 -i ./cloudlinux.ppk # create second terminal

ls > mypipe # Terminal 2
wc -l < mypipe # Terminal 1

# *** TEE ***

ls > file # data is sent to file but not to screen

ls | tee filetee # tee -a to append

sudo echo '127.0.0.1 bob' >> /etc/hosts # Permission denied
echo '127.0.0.1 bob' | sudo tee -a /etc/hosts
tail /etc/hosts