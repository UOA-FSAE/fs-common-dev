# FS common dev
This repo will install everything you need in order to program on the FSAE team at the University of Auckland.

# How to setup
## Linux
### Step 1
Clone this repo
```bash
git clone git@github.com: ~/fs/fs-common-dev
```

### Step 2
Run script
```bash
cd ~/fs/fs-common-dev
```
Setup your system
```bash
make setup
```
Install everything, this may take a bit so go touch the Accumulator :)
```bash
make
```

# How to update
If there is an update then please use the following commands
```bash
cd ~/fs/fs-common-dev
git pull
make
```