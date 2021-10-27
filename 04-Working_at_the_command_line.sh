ssh 10.100.100.35 -i ./cloudlinux.ppk # cloudlinux on-premise server

tty
who

# *** FILE TYPES ***

ls -aF # show files type

ls -F /etc

# blue      > directory
# lightblue > symbolic links
# white     > files
# green     > executable

ls -lrt /etc #
# -l  > long list
# -t  > sorted
# -rt > reverse sorted

ls -lhrt /etc
# -h human readable

ls -ld /etc
# -d show only current directory

ls -l /dev/pts/0
# "c" type = character

ls -l $(tty)

lsblk
# disk blocks == disk partitions

ls -l /dev/sda*
# "b" type = block
# * = 0 or more characters
# ? = 1 any character

ls -l /dev/sda[12]
# [12] = 1 or 2

ls -l /etc/system-release

ls -l /etc/system-release /etc/centos-release /etc/redhat-release
# 1 and 3 are symbolic links (l) to centos-release

cat /etc/*-release
lsb_release -d

ls -l $(which lsb_release)

rpm -qf /usr/bin/lsb_release
rpm -qf $(which lsb_release)

# *** WORKING WITH FILES ***

ls \\ cat \\ mv \\ cp -i # -i > warning if overwrite (works also for rm)

mkdir \\ mkdir -p sales/test

!ls  # => launches last ls command from the history

rm -rf sales # recursive, force

touch file{1..5}
cp -R # recursive

sudo yum install tree

tree /var/log

mkdir -m 777 d1
mkdir -m 700 d2

# *** WORKING WITH LINKS ***

echo Hello > f1

ln f1 f2 # creating HARD link
ln -s f1 f3 # creating SYMBOLIC link (can be done cross-drives)
ln -s /boot//boot/vmlinuz-3.10.0-1160.el7.x86_64 f4


# "n" type > Named Pipes
# "s" type > Sockets

