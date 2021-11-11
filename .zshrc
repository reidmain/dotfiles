echo "Loading .zshrc"

# Calculate the current directory relative to symlinks so we can reference files relative to wherever this file truly is.
current_directory="${${(%):-%x}:A:h}"

# Load zsh aliases.
if [ -f $current_directory/.zsh_aliases ]; then
	source $current_directory/.zsh_aliases
fi

# Update PATH variable.
Sublime_Path="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
rbenv_Path="$HOME/.rbenv/bin"
Scripts_Path="$HOME/Development/Scripts"

export PATH="$rbenv_Path:$Sublime_Path:$Scripts_Path:$PATH"

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"