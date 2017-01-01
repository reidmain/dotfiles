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

# Load git prompt script.
if [ -f ~/.git-prompt.sh ]; then
	source ~/.git-prompt.sh
fi

# Update PATH variable.
LocalCommands_Path="/usr/local/bin:/usr/local/sbin"
Scripts_Path="$HOME/Development/Scripts"
rbenv_Path="$HOME/.rbenv/bin"

export PATH="$rbenv_Path:$Scripts_Path:$LocalCommands_Path:$PATH"

PROMPT_COMMAND='update_terminal_cwd;__git_ps1 "\u@\h:\W" "\\\$ "'

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"
