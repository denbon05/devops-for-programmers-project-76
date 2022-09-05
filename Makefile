touch-vault-secret-file:
	touch .vault-secret

setup:
	ansible-playbook setup.yml -i inventory.ini

deploy:
	ansible-playbook playbook.yml -i inventory.ini -vv

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

vault-decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml