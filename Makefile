netstat:
	netstat -lt
ss:
	ss -tlp

# https://computingforgeeks.com/netstat-vs-ss-usage-guide-linux/
# https://www.redhat.com/sysadmin/ss-command


curl:
	curl 'https://petstore.swagger.io/v2/pet/findByStatus?status=available'| jq
curl2:
	curl -X 'GET' 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold' -H 'accept: application/json' | jq
curl5:
	curl -d "field1=val&fileld2=val1" http://posttestserver.com/post.php
curl3:
	curl -X 'POST' 'https://petstore.swagger.io/v2/pet' -H 'accept: application/json' -H 'Content-Type: application/json' --data @new_pet.json | jq

curl4:
	curl -O https://raw.githubusercontent.com/curl/curl/master/README.md
curl6:
	curl wttr.in

httpie:
	https httpie.io/hello
httpie2:
	https 'petstore.swagger.io/v2/pet/findByStatus?status=sold'

# https httpie.io/hello

# https://petstore.swagger.io/
# jq - https://stedolan.github.io/jq/tutorial/
# curl - https://losst.ru/kak-polzovatsya-curl

# ssh https://www.digitalocean.com/community/tutorials/how-to-use-ssh-to-connect-to-a-remote-server-ru
ssh-keygen1:
	ssh-keygen -t rsa

ssh-keygen2:
	ssh-keygen -b 4096 -t rsa  -f jenkins2

ssh-copy-id:
	ssh-copy-id remotehost

# ssh-copy-id -i ~/.ssh/jenkins2.pub user@remotehost

config:
	nano ~/.ssh/config

#Host microoracle
 #  Hostname 152.52.252.52
 #  User ubuntu
 #  IdentityFile /home/user/.ssh/jenkins2.key

scp:
	scp -r /local/directory remote_username@10.10.0.2:/remote/directory

# https://linuxize.com/post/how-to-use-scp-command-to-securely-transfer-files/

rsync:
	rsync -avzhe ssh --exclude '.idea' ~/project1 user@10.249.140.239:/opt/project1/
# https://rtfm.co.ua/linux-primery-ispolzovaniya-rsync/

wget:
	 wget http://ftp.gnu.org/gnu/wget/wget-1.5.3.tar.gz

# https://losst.ru/komanda-wget-linux

ping
