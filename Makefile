touch-vault-secret-file: check-env
	@ echo ${SECRET} > .vault-secret

setup:
	ansible-playbook setup.yml

galaxy-install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml

encrypt-vault:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vault:
	ansible-vault decrypt group_vars/webservers/vault.yml

# Helpers
check-env:
ifndef SECRET
	$(error 'SECRET' is required)
endif