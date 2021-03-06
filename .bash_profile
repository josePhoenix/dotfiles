source $HOME/.profile

export DISABLE_GIT_PROMPT=0

alias disable-git-prompt="export DISABLE_GIT_PROMPT=1"
alias enable-git-prompt="export DISABLE_GIT_PROMPT=0"

# get current branch in git repo
function parse_git_branch() {
    if [ "$DISABLE_GIT_PROMPT" == 1 ]; then
        return
    fi
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    if [ "$DISABLE_GIT_PROMPT" == 1 ]; then
        return
    fi
    status=`git status 2>&1 | tee`
    dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
    ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
    bits=''
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
        bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}

export PS1="\[\e[34m\]\t\[\e[m\] \[\e[32m\]\h\[\e[m\]:\W\[\e[36m\]\`parse_git_branch\`\[\e[m\] \u\[\e[37m\]\\$\[\e[m\] "

if [ -f /usr/local/etc/bash_completion ]; then
  source /usr/local/etc/bash_completion
fi
if [ -f "$HOME/etc/bash_completion" ]; then
  source "$HOME/etc/bash_completion"
fi

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/dev"

if [ -f "$HOME/bin/virtualenvwrapper.sh" ]; then
  export VIRTUALENVWRAPPER_SCRIPT="$HOME/bin/virtualenvwrapper.sh"
  source "$HOME/bin/virtualenvwrapper_lazy.sh"
elif [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export VIRTUALENVWRAPPER_SCRIPT="/usr/local/bin/virtualenvwrapper.sh"
  source "/usr/local/bin/virtualenvwrapper_lazy.sh"
fi

if [ -d "$HOME/.profile.d" ]; then
  for fn in "$HOME/.profile.d/"*; do
    source "$fn"
  done
fi
