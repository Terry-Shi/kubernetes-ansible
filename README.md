# kubernetes-ansible
Install kubernetes with Ansible playbook

在本工程目录，执行以下命令安装
ansible-playbook master.yml -i inventory/local -u root --ask-pass -vvvv 

一些说明：
1. Ansible 存在bug，在检查一个yum 的 package是否存在时 只看了package name 没有检查版本号。 
https://github.com/ansible/ansible-modules-core/issues/4529

