.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# Lesson 1

# NAVIGATION

pwd: ## Current work dir
	pwd

ls: ## Show directory content:
	ls

ls-la: ## Show directory content with detail
	ls -la

ls-lah: ## Show directory content with detail
	ls -lah

ls-lah-p: ## Show directory content with detail
	ls -lah *sh

lsh: ## Show command help
	ls --help

man: ## Show command man
	man ls

cd: ## Change directory
	cd my_secret_directory

cd2: ## Change directory
	cd my_secret_directory && ls -la

cd3: ## Change directory
	cd .. && ls

# Create/Move/Remove

mkdir: ## Create directory
	mkdir directory_name

rmdir: ## Remove directory
	rmdir directory_name

rmdir2: ## Remove directory fail
	rmdir my_secret_directory

rm-r: ## Remove no empty directory (-r recursive)
	rm -r my_secret_directory

rm-rf: ## remove files and directories recursively forced.
	rm -rf my_secret_directory

cp: ## copy file
	cp demo.sh demo-bkp.sh

cp2: ## copy file
	cp ~/.ssh/id_rsa.pub .

mv: ## move file
	mv id_rsa.pub key_dir

rm: ## remove file
	rm key_dir/id_rsa.pub

touch: ## Create file/update timestamps
	touch my_new_file.txt

cat: ## Print file content using cat utility
	cat ~/.ssh/id_rsa.pub

less: ## Print file using less q - exit; f - next page; b - previous page
	less /var/log/auth.log

head: ## Explore head
	head /var/log/Xorg.0.log

tail: ## Explore tail
	tail /var/log/Xorg.0.log

tail-f: ## Explore tail interactive
	tail -f /var/log/Xorg.0.log

# System commands

df: ## Disk space usage
	df -h

du: ## Disk space usage in directory
	du -h

ncdu: ##  provides a navigable overview of file space usage
	ncdu

top: ## displays all currently-running processes and their owners, memory usage, and more
	top
htop: ## ncurses top analog
	htop

logout:
	logout

exit:
	exit

clear:
	clear

passwd: # Change password https://www.opennet.ru/man.shtml?topic=passwd&category=1
	passwd

## Grep https://linuxconfig.org/grep-egrep-fgrep-rgrep
grep: ## utility for searching lines using regexp
	grep mouse /var/log/Xorg.0.log

grep2: ## utility for searching lines using regexp
	grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' /var/log/syslog

grep3: ## utility for searching lines using regexp
	grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' /var/log/syslog > ips.txt

grep4: ## find substring
	grep "3" . -r --exclude-dir .idea

grep-sort:
	grep "3" . -r --exclude-dir .idea | sort

grep5:
	tail -f  /var/log/syslog | grep -E --line-buffered ''

grep6:
	history | grep apt | less

# ctrl+r history search

grep-wc:
	cat Makefile  | grep grep | wc -l

# rg (rip grep)
# https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md

ps: ## shows all of the user's currently-running processes
	ps

#date
#
#echo
#kill
#killall
#tar (the bomb disarming command)
#jobs, bg, and fg
#gzip
#gunzip
#alias
#xargs
#ln
#who
# ssh / sc
# STDIN STDOUT SRDERR


# pipe

# fg bg ctrl+z tab
# ctrl+r



