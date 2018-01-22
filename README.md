# wordpress-ansible
Ansible and Worpress are hosted on two separate EC2 Ubuntu 16.04 image  instances

This repository consists all required Ansible playbook and bash scripts needed for Installing and configuring wordpress application on AWS Wordpress EC2 instance environment

## Ansible related playbook and configuration files
Ansible setup includes roles based configuration process where a playbook is devided in multiple parts based on role it plays. Within this set up we have following roles.<br>
server<br>
php<br>
mysql<br>
wordpress<br>

### server role
server role is used for installing following components <br>
- apache2<br>
- php-mysql<br>
- php<br>
- python3-pip<br>
- python3-mysqldb<br>
- libapache2-mod-php<br>
- Install MySQL database and configure root/admin password. This is passed as a parameter in CloudFormation temmplate

### server role
php role installs following dependencies<br>
 - php-gd<br>
 - php-ssh2<br>

### mysql
This role performs following tasks.<br>
Values for below configuration is passed as parameter in CloudFormtion template.<br>
- Creates MySQL database<br>
- Creates user name for above database.<br>
- Creates password<br>
- Grants appropriate previliges<br>

### worpress
This roles performs following tasks<br>
- Dowloads wordpress tar ball from https://wordpress.org/latest.tar.gz and extracts to /var/www/<br>
- Configure wordpress application server with database details described in above sections<br>

## bash Scripts
