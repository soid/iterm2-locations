# iterm2-locations
Saves iTerm2 tab locations and restore them after restarting iTerm2.

iTerm2 for OS X is great at restoring its windows arrangement and tabs, but it falls short in restoring the actual shell state. If you use bash (the default shell in OS X), you can try this extension.

iterm2-locations extension won't restore the entire bash state, but it will restore its current directories for every iTerm2 window and for every tab. It also won't restore location in open ssh sessions, though it would be cool to implement later.

Check it out and let me know how well it works for you.


### Quick Install
Run in iTerm2:
```
curl -sLk 'http://j.mp/it2lctns' | sh
```
(this command will run a script that will use git to clone this repository in ~/.iterm2-locations, and will append the sourcing of the extenstion in your .bash_profile)

After that restart iTerm2 or reload .bash_profile in every tab (`source ~/.bash_profile`).

Alternatively you may install it manually.

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

