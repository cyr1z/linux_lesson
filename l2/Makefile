
#  ^
#  |
#
# Ctrl+C
# Ctrl+R
# Ctrl+S
# ;

which:
	which zsh
	which python
	whereis nano
	whereis du

## fish https://fishshell.com/docs/current/
## zsh https://niklan.net/blog/149

chsh:
	sudo chsh -s $(which zsh)

## env https://www.digitalocean.com/community/tutorials/how-to-read-and-set-environmental-and-shell-variables-on-linux-ru

env1:
	cat /etc/environment

env2:
	env

env10:
	printenv

env4: ## set
	VAR1='42L4'
	echo $VAR1

env4: ## unset
	unset VAR1
	echo $VAR1

env5:
	export VAR='X11r'
	echo $VAR
	VAR=
	echo $VAR

env8:
	export PATH="$HOME/bin:$PATH"

env3: ## ignore
	env -i bash

env6:
	VAR2='X11r'
	echo $VAR2
	env -i bash
	echo $VAR2

env11:
	echo 'export EDITOR=/usr/bin/nano' >> ~/.bashrc
	cat ~/.bashrc

env7:
	nano .bashrc
	nano .zshrc
	nano /etc/bash.bashrc
	nano /etc/zsh/zshrc
	nano /etc/profile
	nano /etc/environment

sudo:
	sudo

sudosu:
	sudo su

## https://itproffi.ru/polzovateli-i-gruppy-v-linux/
## https://www.dmosk.ru/miniinstruktions.php?mini=linux-users

usr1:
	cat /etc/passwd

usr2:
	cat /etc/group

usr3:
	sudo cat /etc/shadow

usr4:
	sudo useradd john

usr5:
	sudo groupadd pirates

usr6:
	sudo usermod -a -G pirates john

usr7:
	sudo groupdel pirates

passwd:
	sudo passwd john

userdel:
	userdel john


# fs
fs:
	cat /etc/fstab

# ln https://vds-admin.ru/unix-commands/ln-link

ln:
	ln -s ./key_dir /home/beaver/Projects/pythonProject5/key_dir1

# Permissions https://androidp1.ru/kak-polzovatsja-komandami-chown-i-chmod-v-linux/

chown:
	sudo chown root text.txt && stat text.txt


chgrp:
	sudo chgrp root text.txt && stat text.txt

chown3:
	sudo chown beaver text.txt && stat text.txt


chgrp3:
	sudo chgrp beaver text.txt && stat text.txt

chown2:
	sudo chown beaver:beaver text.txt && ll text.txt

chmod1:
	sudo chmod 640 text.txt && ll text.txt

chmod:
	sudo chmod a+r text.txt && ll text.txt

## apt
apt1:
	sudo apt install ne
	# sudo yum install ne       # For Redhat based systems
	# sudo dnf install ne       # For Fedora 22+ systems
	# apk add py3-pip			# For Alpine

apt2:
	sudo apt remove ne

apt3:
	sudo apt update

apt4:
	sudo apt upgrade

apt5:
	sudo apt autoremove

apt6:
	sudo apt autoclean

# scripting

# cron https://crontab.guru/




