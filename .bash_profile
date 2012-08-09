# Load ~/.aliases, ~/.bash_prompt, ~/.exports, ~/.functions, and ~/.secret.
# ~/.secret can be used for settings that shouldn't be committed to git.
for file in ~/.{aliases,bash_prompt,exports,functions,secret}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Prefer US English and UTF-8.
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
