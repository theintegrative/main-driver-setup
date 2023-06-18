#!/bin/bash
echo "Hello world"
SSH_PRIV_KEY="$HOME/.ssh/id_ed25519"
SSH_PUB_KEY="$SSH_PRIV_KEY.pub"
sudo zypper --non-interactive in -y keepassxc ansible git gh glab
pip install ansible
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t ed25519 -f "$SSH_PRIV_KEY"
if [ ! -z $TESTING ]; then
	echo "Testing $(date)"	
else
	gh auth login -h github.com -p ssh -w -s admin:public_key
	glab auth login -h gitlab.com 
	glab ssh-key add -t "main driver" "$SSH_PUB_KEY"
fi
ansible-galaxy install -r ansible/requirements.yml
ansible-playbook -i localhost, --connection="local" -b ansible/configure.yml
