set -o vi

module () 
{ 
    eval `/usr/bin/modulecmd bash $*`
}

export MODULEPATH=${HOME}/ModuleFiles:${MODULEPATH}

alias ls="ls --color"

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1=" \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \\$\[$(tput sgr0)\] "

export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"

# Python stuff installed via pip install --user
export PATH=${HOME}/.local/bin:$PATH

source ${HOME}/.borg_secret

module load lpass gdb valgrind texlive doxygen neomutt rust bazel go-1.8.3  llvm-5.0 cmake/3.10

alias tmux="tmux -2"

