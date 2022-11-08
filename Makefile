touch-vault-secret-file:
	touch .vault-secret

setup:
	ansible-playbook setup.yml

galaxy-install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml

encrypt-vault:
	ansible-vault encrypt group_vars/all/vault.yml

decrypt-vault:
	ansible-vault decrypt group_vars/all/vault.yml