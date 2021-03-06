# Load ~/.aliases, ~/.bash_prompt, ~/.exports, ~/.functions, and ~/.secret.
# ~/.secret can be used for settings that shouldn't be committed to git.
for file in ~/.{aliases,bash_prompt,exports,functions,secret}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Append to the history file instead of overwriting it.
shopt -s histappend

# Prevent Ctrl-D from exiting a terminal session
shopt -s -o ignoreeof

# Share history between sessions.
#PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# deno
source /usr/local/etc/bash_completion.d/deno.bash

# git
source /usr/local/etc/bash_completion.d/git-completion.bash