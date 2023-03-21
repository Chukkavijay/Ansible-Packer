[allservers]
testserver01 ansible_port=22 ansible_host=${testserver01}  ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem 
testserver02 ansible_port=22 ansible_host=${testserver02} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem
testserver03 ansible_port=22 ansible_host=${testserver03} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem

[pvt]
pvttestserver01 ansible_port=22 ansible_host=${pvttestserver01} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem
pvttestserver02 ansible_port=22 ansible_host=${pvttestserver02} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem
pvttestserver03 ansible_port=22 ansible_host=${pvttestserver03} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem

[webservers]
testserver01 ansible_port=22 ansible_host=${testserver01} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem

[appservers]
testserver02 ansible_port=22 ansible_host=${testserver02} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem

[dbservers]
testserver03 ansible_port=22 ansible_host=${testserver03} ansible_user=ansibleadmin ansible_ssh_private_key_file=/home/ansibleadmin/.ssh/ansiblekey.pem