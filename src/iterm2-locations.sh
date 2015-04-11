
#
# D.N.D.
#


# It uses this tool for pre-command hooks in bash: https://github.com/rcaloras/bash-preexec
ITERM2_LOCATIONS_DIR=~/.iterm2-locations/locations
BASH_PREEXEC_URL=https://raw.githubusercontent.com/rcaloras/bash-preexec/master/bash-preexec.sh
BASH_PREEXEC_FILE=~/.bash-preexec.sh

# Install bash-preexec if it's not installed already
[[ ! -f $BASH_PREEXEC_FILE ]] && curl $BASH_PREEXEC_URL > $BASH_PREEXEC_FILE

# Create directory for keeping locations
[[ ! -d $ITERM2_LOCATIONS_DIR ]] && mkdir -p $ITERM2_LOCATIONS_DIR

# Including bash-preexec library
source $BASH_PREEXEC_FILE

iterm2_locations_precmd() {
    echo $PWD > $ITERM2_LOCATIONS_DIR/location.$ITERM_SESSION_ID
}

precmd_functions+=(iterm2_locations_precmd)

if [[ -f $ITERM2_LOCATIONS_DIR/location.$ITERM_SESSION_ID ]]; then
    cd `cat $ITERM2_LOCATIONS_DIR/location.$ITERM_SESSION_ID`
fi


