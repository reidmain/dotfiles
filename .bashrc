# Load bash aliases.
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# Load bash functions.
if [ -f ~/.bash_functions ]; then
	source ~/.bash_functions
fi

# Update PATH variable.
MacPorts_Path="/opt/local/bin:/opt/local/sbin"

LocalCommands_Path="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin"

AndroidSDK_Path="$HOME/Development/adt-bundle-mac-x86_64/sdk/tools:/$HOME/Development/adt-bundle-mac-x86_64/sdk/platform-tools"

Scripts="$HOME/Development/Scripts"

export PATH="$Scripts:$AndroidSDK_Path:$LocalCommands_Path:$MacPorts_Path:$PATH"
