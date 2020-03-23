# Tinners Arch Linux Installs

So when the next machine comes along or this one blows up I'm not totally boned. 

Norman keymap as of now (22/03/2020) lives in `/usr/share/kbd/keymaps/i386/norman/norman.map.gz` - use `loadkeys` or set `localectl` properly once in the VT. 

SSH is done via systemd with the `--user` service and the `.pam_environment` file

Rest of the files are application specific configs

Can't wait for `systemd` homedirs 