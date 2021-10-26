ssh 10.100.100.35 -i ./cloudlinux.ppk

cat /etc/system-release
wc -l !$
date
date --date "60 days"
date --date "60 months ago"

cal
cal -3 -m 

python
2**8-2
# exit > Ctrl+D(delta)

# clear: Ctrl+L(lemma)

tty
ls -l /dev/pts/0
ls -l $(tty)

mesg n
mesg y

# if ethernet connection is not up
nmcli conn show
nmcli conn up <connectionName>

# use "!$" in order to get last entered parameter

sudo yum install -y redhat-lsb-core net-tools epel-release kernel-headers kernel-devel 

sudo yum groupinstall -y "Development Tools"

# sudo yum groupinstall -y "X Window System" "MATE Desktop"

# systemctl set-default graphical.target
# systemctl isolate graphical.target