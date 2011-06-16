#!/bin/bash

# cange theme by Christian Angermann <http://github.com/cange>
git_prompt_status() {
  # if [ -n "$(git rev-parse --git-dir | grep 'git' 2> /dev/null)" ]; then
  if git rev-parse --git-dir >/dev/null 2>&1; then
    if [ -n "$(git status | grep 'Changed but not updated' 2> /dev/null)" ]; then
    #if [ -n "$(git status | grep 'Changes not staged' 2> /dev/null)" ]; then
      color="${red} ✗$(git_prompt_info)"
    elif [ -n "$(git status | grep 'Changes to be committed' 2> /dev/null)" ]; then
      color="${yellow} ^$(git_prompt_info)"
    elif [ -n "$(git status | grep 'Untracked files' 2> /dev/null)" ]; then
      color="${purple} +$(git_prompt_info)"
    elif [ -n "$(git status | grep 'nothing to commit' 2> /dev/null)" ]; then
      color="${green} ✓$(git_prompt_info)"
    else
      color="$(git_prompt_info)"
    fi
  fi
  echo "$color${normal}"
}
# for example:
# ✓ master cange workspace/ $
PROMPT="\[\$(git_prompt_status)\]${cyan}\W ${normal}\$ "
## git-theme
# feel free to change git chars.
GIT_THEME_PROMPT_DIRTY=""
GIT_THEME_PROMPT_CLEAN=""
GIT_THEME_PROMPT_PREFIX=" "
GIT_THEME_PROMPT_SUFFIX=" "

## alternate chars
SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

