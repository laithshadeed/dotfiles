#!/usr/bin/env bash

# cange theme by Christian Angermann <http://github.com/cange>

git_prompt_status() {
  local git_status_output
  prefix="${normal}⎇  "
  git_status_output=$(git status 2> /dev/null )

  if [ -n "$(echo $git_status_output | grep 'Changes not staged')" ]; then
    git_status="$prefix${red}$(git_prompt_info) ✖ "
  elif [ -n "$(echo $git_status_output | grep 'Changes to be committed')" ]; then
    git_status="$prefix${yellow}$(git_prompt_info)${bold_yellow} ⌅ "
  elif [ -n "$(echo $git_status_output | grep 'Untracked files')" ]; then
    git_status="$prefix${orange}$(git_prompt_info) ✚ "
  elif [ -n "$(echo $git_status_output | grep 'nothing to commit')" ]; then
    git_status="$prefix${green}$(git_prompt_info) ✔ "
  else
    git_status="$(git_prompt_info)"
  fi
  echo "$git_status${normal}"
}

# for example:
# + branch-name directory-name $
function prompt_command() {
  PS1="$(git_prompt_status)${cyan}\W${normal} ➜ "
}
PROMPT_COMMAND=prompt_command;
## git-theme
# feel free to change git chars.
GIT_THEME_PROMPT_DIRTY=""
GIT_THEME_PROMPT_CLEAN=""
GIT_THEME_PROMPT_PREFIX=""
GIT_THEME_PROMPT_SUFFIX=""

## alternate chars
SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""
