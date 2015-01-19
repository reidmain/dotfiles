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

LocalCommands_Path="/usr/local/bin:/usr/local/sbin"

Scripts_Path="$HOME/Development/Scripts"

rbenv_Path="$HOME/.rbenv/bin"

Heroku_Path="/usr/local/heroku/bin"

PostgreSQL_Path="/opt/local/lib/postgresql93/bin"

export PATH="$Heroku_Path:$rbenv_Path:$Scripts_Path:$LocalCommands_Path:$MacPorts_Path:$PostgreSQL_Path:$PATH"

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"
