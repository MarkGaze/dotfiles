#!/bin/bash

# Bash scripts to load
if [ -f /usr/local/etc/bash_completion ]; then
	# shellcheck disable=SC1091
    source /usr/local/etc/bash_completion
fi

for file in ~/.{bash_aliases,bash_prompt,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck disable=SC1090
		source "$file"
	fi
done
unset file