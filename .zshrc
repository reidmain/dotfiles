echo "Loading .zshrc"

# Calculate the current directory relative to symlinks so we can reference files relative to wherever this file truly is.
current_directory="${${(%):-%x}:A:h}"

# Load zsh aliases.
if [ -f $current_directory/.zsh_aliases ]; then
	source $current_directory/.zsh_aliases
fi

# Initialize completion system.
# https://zsh.sourceforge.io/Doc/Release/Completion-System.html
autoload -Uz compinit && compinit

# Load and configure vcs_info.
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '🪵 %b'

# Update PATH variable.
Sublime_Path="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
rbenv_Path="$HOME/.rbenv/bin"
Scripts_Path="$HOME/Development/Scripts"

export PATH="$rbenv_Path:$Sublime_Path:$Scripts_Path:$PATH"

# Update prompt to display git information.
PROMPT='%S%F{33}%n@%m%f%s%S%F{11}%9~%f%s%S%F{199}${vcs_info_msg_0_}%f%s %# '

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"