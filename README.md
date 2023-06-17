# Linux config
Run:
```bash
wget -qO - https://raw.githubusercontent.com/theintegrative/main-driver-setup/opensuse-thinclient/0.sh | bash
```
## Developing
List packages:
``` bach
./utils/list_packages
```

Add packages you want to exclude:
``` bash
nvim ./utils/exclude_packages
```

## Testing
```
docker run -v ./test:/bin/run -it opensuse/tumbleweed
```
