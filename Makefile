touch-vault-secret-file:
	touch .vault-secret

setup:
	ansible-playbook setup.yml

galaxy-install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook deploy.yml

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml