ssh 10.100.100.35 -i ./cloudlinux.ppk # cloudlinux on-premise server


# TOUCH 
touch touchfile
> stdinfile

touch touchfile
stat touchfile

touch -d '10 April 1973' touchfile

!s # last command starting with "s"

#vim commands:
 :set showmode
 :set number || :set nonumber || :set invnumber # inverse
 :set nohlsearch # no highlight search
 :set ai # auto-indent
 :ts=4 expandtab # with tab, add 4 spaces
 :abbr _sh #!/bin/bash   # _sh is replaced auto by text at end
 :nmap <C-N> :set invnumber<CR> # define Ctrl+N as shortcut for following command

 :e! # revert to last saved version

  G   => go to last line
  1G  => go to first line
  2G  => go to line 2
  xG  => go to line x
 
  o   => insert line below current line
  O   => insert line above current line
 
  i   => insert before current character
  a   => insert after current character
  I   => insert at start of line
  A   => insert at end of current line

  yy  => copy current line
  2yy => copy 2 lines
  p   => paste below line
  P   => paste above line

  dw  => delete one word
  d$  => delete to end of line
  dd  => delete complete line
  2dd => delete 2 lines
  dG  => delete to end of file
  d1G => delete to start of file

  u   => undo

  ^   => go to start of line
  $   => go to end of line

  gUU => put whole line to upper case
  guu => put whole line to lower case
  g~~ => invert case of line

  ~   => invert character

  :5-8w newfile # copy files 5 to 8 and create "newfile"

  :r newfile # read newfile and insert at current position