# wordpress-ansible
This repository consists all required Ansible playbook and bash scripts needed for Installing and configuring wordpress application on AWS environment

## Ansible related playbook and configuration files
Ansible setup includes roles based configuration process where a playbook is devided in multiple steps based on role it plays. Within this set up we have following roles.<br>
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

# bash Scripts
