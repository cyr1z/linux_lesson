# Lesson 1
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# NAVIGATION

pwd: ## Current work dir
	pwd

ls: ## Show directory content:
	ls

lsla: ## Show directory content with detail
	ls -la

lsh: ## Show command help
	ls --help

man: ## Show command man
	man ls

cd: ## Change directory
	cd my_secret_directory

cd2: ## Change directory
	cd my_secret_directory && ls -la

# &&, ||,

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


# Print file content

cat: ## Print file content using cat utility
	cat ~/.ssh/id_rsa.pub

stat: ## file info
	stat ~/.ssh/id_rsa.pub

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

# ncdu

top:
	top

htop:
	htop

## Grep
grep: ## utility for searching lines using regexp
	grep mouse /var/log/Xorg.0.log

grep2: ## utility for searching lines using regexp
	grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' /var/log/syslog

grep3: ## utility for searching lines using regexp
	grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' /var/log/syslog > ips.txt

grep4: ## find substring
	grep "dir" . -r --exclude-dir .idea

grep5:
	tail -f  /var/log/syslog | grep -E --line-buffered ''

grep6:
	history | grep apt | less



# STDIN STDOUT SRDERR


# pipe
# > - перенаправление потока вывода в файл (файл будет создан, или перезаписан)
# >> - дописать поток вывода в конец файла;
# < - перенаправляет данные из файла в поток ввода;
# <<< - чтение данных из строки, вместо всего содержимого файла (работает для bash 3+)
# 2> - перенаправляет поток ошибок в файл (файл будет создан, или перезаписан)
# 2>> - дописать ошибки в конец файла;
# 2>&1 - ошибки в основной потока
# &>


lsout:
	ls -la > output

grepout:
	grep alias ~/.zshrc > result
	# cat result

errout:
	 cd dart 2> err.txt

allout:
	 cd dart 2> err.txt

norewrite:
	echo 'hello' >> result

linecount:
	wc -l < result

linecountout:
	wc -l < result > output

# fg bg tab hystory



