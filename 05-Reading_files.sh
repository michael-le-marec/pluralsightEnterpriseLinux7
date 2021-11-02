ssh 10.100.100.35 -i ./cloudlinux.ppk # cloudlinux on-premise server

echo $SSH_CONNECTION

cat /etc/services
wc -l /etc/services # nb of lines

less !$ # "/" forward search || "?" for backward search

head -n 5 /etc/services
tail -n 5 /etc/services

# SEARCH IN TEXT & FILES WITH GREP

yum list installed | grep kernel
yum list installed | grep ^kernel  # ^ ==> begins with
sudo yum install ntp

cat /etc/ntp.conf
wc -l !$
cp !$ .
ll
grep server ntp.conf
type grep
grep ^server ntp.conf

grep '\bserver\b' ntp.conf # \b => word boundary

sudo yum install words

grep -E 'ion$' /usr/share/dict/words # $ => end of the word
grep -E '^po..ute$' /usr/share/dict/words # "." replaces just any character
# => begins with "po", contains any 2 characters, ends with "ute"
grep -E '[aeiou]{5}' /usr/share/dict/words
# {5} => multiplier
# here: look for words with contains 5 voyels next to each other

# EDITING FILES WITH SED

cat ntp.conf
sed '/^#/d ; /^$/d' ntp.conf

# create a function
function clean_file {
    sed -i '/^#/d ; /^$/d' $1
}

clean_file ntp.conf
cat ntp.conf

# COMPARING FILES

cat ntp.conf
cp ntp.conf ntp.new
echo new >> ntp.new

diff ntp.conf ntp.new

vi ntp.new

diff /etc/ntp.conf ntp.conf

sudo rpm -V ntp

md5sum /usr/bin/passwd # checksum
md5sum /usr/bin/passwd > server1

# FINDING FILES

find /usr/share/doc -name '*.pdf'
find /usr/share/doc -name '*.pdf' -exec cp {} . \;
find -name '*.pdf' -delete

find /etc -maxdepth 1 -type l # Find specific files and delete

df -h /boot

find /boot -size +20000k -type f
find /boot -size +10000k -type f -exec du -h {} \;
