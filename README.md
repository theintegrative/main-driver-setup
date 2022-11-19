# main-driver-setup

Here you can find my current main driver setup using ansible. I wrote a blogpost that goes deeper into it [here](https://theintegrative.net/insights/how-my-main-driver-is-setup-with-ansible/).

## How to use this
To run the playbook against a machine:

``` /bin/bash
ansible-playbook -i remote-or-local, -u user -bK configure-main.yml
```

For testing iterations:
``` /bin/bash
vagrant up --no-provision
vagrant provision
```

## Todo list
- [ ] add conditions for my frequently used OS's
  - [x] Ubuntu
  - [x] Archlinux
  - [x] Centos
  - [ ] Opensuse
- [ ] add hugo
