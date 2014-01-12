# Load bash aliases.
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Load bash functions.
if [ -f ~/.bash_functions ]; then
	source ~/.bash_functions
fi

# Load git auto-completion script.
if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

# Update PATH variable.
MacPorts_Path="/opt/local/bin:/opt/local/sbin"

LocalCommands_Path="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin"

AndroidSDK_Path="$HOME/Development/adt-bundle-mac-x86_64/sdk/tools:$HOME/Development/adt-bundle-mac-x86_64/sdk/platform-tools"

Scripts_Path="$HOME/Development/Scripts"

rbenv_Path="$HOME/.rbenv/bin"

Heroku_Path="/usr/local/heroku/bin"

export PATH="$Heroku_PATH:$rbenv_Path:$Scripts_Path:$AndroidSDK_Path:$LocalCommands_Path:$MacPorts_Path:$PATH"

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"
