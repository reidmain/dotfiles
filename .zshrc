echo "Loading .zshrc"

# Calculate the current directory of this file, taking symlinks into account, so we can reference other files in this directory.
current_directory="${${(%):-%x}:A:h}"

# Load Z shell aliases.
if [ -f $current_directory/.zsh_aliases ]; then
	source $current_directory/.zsh_aliases
fi

# Initialize Z shell's completion system.
# https://zsh.sourceforge.io/Doc/Release/Completion-System.html
autoload -Uz compinit && compinit

# Enable displaying version control system information in the Z shell prompt via the vcs_info function.
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Version-Control-Information
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '🪵 %b'

# Add Homebrew, rbenv, Sublime Text's CLI (subl), and personal scripts folder to the PATH variable.
Homebrew_Path="/opt/homebrew/bin:/opt/homebrew/sbin"
rbenv_Path="$HOME/.rbenv/bin"
Sublime_Path="/Applications/Sublime Text.app/Contents/SharedSupport/bin"
Scripts_Path="$HOME/Development/Scripts"

export PATH="$Homebrew_Path:$rbenv_Path:$Sublime_Path:$Scripts_Path:$PATH"

# Update prompt to display git information.
PROMPT='%S%F{33}%n@%m%f%s%S%F{11}%9~%f%s%S%F{199}${vcs_info_msg_0_}%f%s %# '

# Enable rbenv shims and autocompletion.
eval "$(rbenv init -)"