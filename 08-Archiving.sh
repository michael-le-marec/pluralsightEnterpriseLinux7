ssh 10.100.100.35 -i ./cloudlinux.ppk # cloudlinux on-premise server

tar --create --verbose --file=doc.tar /usr/share/doc
# OR
tar -cvf doc.tar /usr/share/doc
# -c > (c)reate
# -x > decompress
# -t > test
# -v > (v)erbose
# -vv > more verbose
# -f > save to a (f)ile
# -z > compress using gzip
# -j > compress using bzip2

tar --list --file=doc.tar 
# OR
tar -tf doc.tar 
# OR
tar tf doc.tar

tar --extract --verbose --file=doc.tar 
# OR
tar xvf doc.tar

mkdir test
cd test
cp /etc/hosts .
cp /etc/hostname .
cp /etc/services .
ll

cd ..
tar -cvf my0.tar -g my.snar test # snar = snapshot / tar

echo hi >> test/hosts
tar -cvf my1.tar -g my.snar test

rm test/hostname
tar -cvf my2.tar -g my.snar test
ll

rm -rf test
tar -xvf my2.tar -g /dev/null
cat test/hosts

# *** COMPRESSION ***

cd
gzip doc.tar
# file is now named doc.tar.gz

file doc.tar.gz

gunzip doc.tar.gz # UNZIP

bzip2 doc.tar # bzip2 compresses more
bunzip2 doc.tar.bz2 # UNZIP

time tar -cvf doc.tar $HOME

time tar -cvzf doc.tar.gz $HOME

time tar -cvjf doc.tar.bz2 $HOME

rm -rf home

# *** USING CPIO ***

find /usr/share/doc -name '*.pdf'

cd /usr/share/doc

find -name '*.pdf'

find -name '*.pdf' | cpio -o > /tmp/pdf.cpio
cd
mkdir pdf
cd !$
pwd

cpio -id < /tmp/pdf.cpio
# -o > out
# -i > in
# -d > create directories if needed

cd /tmp/
sudo cp /boot/initramfs-3.10.0-1160.el7.x86_64.img .

file initramfs-3.10.0-1160.el7.x86_64.img
mkdir work
cd work
cpio -id < ../initramfs-3.10.0-1160.el7.x86_64.img
ll
tree

# *** DD > DISK DUPLICATOR ***

dd if=/dev/sr0 of=netinstall.iso # if = input file, of = output file

sudo dd if=/dev/sda1 of=boot.img

su -
fdisk -l

dd if=/dev/sda of=sda.mbr count=1 bs=512 # backup of the MBR of the disk (first 512 bytes of the disk)

#dd if=/dev/zero of=/dev/sda/count=1 bs=512 # destroy MBR: DO NOT LAUNCH
#dd if=sda.mbr of=/dev/sda # restoring MBR

exit