# Colorful git branch
export GIT_BRANCH="\$(git branch 2>/dev/null | grep '^*' | colrm 1 2 | sed -e 's/(detached from.*/**detached**/g' -e 's/feature\///g' -e 's/---/\//g' | cut -b 1-20 )"
export GIT_COLOR="\$(if [[ $GIT_BRANCH = 'develop' ]]; then echo '1;4;31m'; else echo '1;32m'; fi)"
export GIT_PS=" \[\e[$GIT_COLOR\]$GIT_BRANCH\[\e[0m\]"
export PS1="\u:\W$GIT_PS\$ "
