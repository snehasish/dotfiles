set -o vi

export PATH=${HOME}/apps/texlive/2016/bin/x86_64-linux:${HOME}/pkgs/bin:${PATH}

export PATH=${HOME}/working/pasha.debug/bin/:${PATH}
export LD_LIBRARY_PATH=${HOME}/working/pasha.debug/lib:${HOME}/pkgs/lib:${LD_LIBRARY_PATH}
export C_INCLUDE_PATH=${HOME}/pkgs/include
export CPLUS_INCLUDE_PATH=${HOME}/pkgs/include
export LIBRARY_PATH=${HOME}/pkgs/lib

alias ls="ls --color"

source ${HOME}/.git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1=" \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$\[$(tput sgr0)\] "

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
