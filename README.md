Fedora setup
============
These are my general setup notes when installing/upgrading fedora.
I am using the KDE bundle these days. This list is always incomplete
as every time I have to upgrade I find something is missing and I try
to remember to add it to this list.

Repos
=====
* https://github.com/shanep/vim
* https://github.com/shanep/emacs
* kernel sources

Packages
========
htop
git
vim-X11
emacs
aspell
emacs prelude

Setup
=====
1. su -c 'yum -y update'
2. install custom xorg config for RAT 7 mouse
	- /etc/X11/xorg.conf.d/
3. set host name
4. set git commit name and e-mail
5. install yum fastest mirrors
6. install rpm fusion
7. install nvidia drivers
8. install exuberant ctags
9. install google chrome
10. install bashrc
11. install git bash scriptsudo
12. install inconsolata fonts
	- levien-inconsolata-fonts
13. sbcl
