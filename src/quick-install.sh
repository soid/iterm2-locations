#!/bin/sh

[[ ! -d ~/.iterm2-locations ]] && git clone https://github.com/soid/iterm2-locations.git ~/.iterm2-locations

if ! grep -q iterm2-locations ~/.bash_profile; then 
    echo "# Include iterm2-locations" >> ~/.bash_profile
    echo "source ~/.iterm2-locations/src/iterm2-locations.sh" >> ~/.bash_profile
fi

