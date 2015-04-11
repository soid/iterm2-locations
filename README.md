# iterm2-locations
Saves iTerm2 tab locations and restore them after restarting iTerm2.

### Quick Install
Run in iTerm2:
```
curl -s 'https://raw.githubusercontent.com/soid/iterm2-locations/master/src/quick-install.sh' | sh
```

### Manual Install

Checkout the scripts:
`git clone https://github.com/soid/iterm2-locations.git ~/.iterm2-locations`

Add the script to your ~/.bash_profile
```
# Include iterm2-locations
source ~/.iterm2-locations/src/iterm2-locations.sh
```

or run this command to append it:
```
echo "# Include iterm2-locations
source ~/.iterm2-locations/src/iterm2-locations.sh" >> ~/.bash_profile
```

