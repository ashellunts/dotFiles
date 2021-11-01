export LANG="en_US.UTF-8"
source /usr/local/etc/bash_completion.d/git-completion.bash
export BASH_SILENCE_DEPRECATION_WARNING=1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
export TV_CCACHE_ENABLED="True"

cd git

