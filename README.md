# devops-for-programmers-project-76

### Hexlet tests and linter status:

[![Actions Status](https://github.com/denbon05/devops-for-programmers-project-76/workflows/hexlet-check/badge.svg)](https://github.com/denbon05/devops-for-programmers-project-76/actions)

## Usage

```bash
# create secret for vault (SECRET=hello)
make touch-vault-secret-file <SECRET>

# install roles and collections
make galaxy-install

# prepare targets environment
make setup

# deploy the app
make deploy
```
