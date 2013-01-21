# Load ~/.aliases, ~/.bash_prompt, ~/.exports, ~/.functions, and ~/.secret.
# ~/.secret can be used for settings that shouldn't be committed to git.
for file in ~/.{aliases,bash_prompt,exports,functions,secret}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Append to the history file instead of overwriting it.
shopt -s histappend

# Share history between sessions.
#PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
