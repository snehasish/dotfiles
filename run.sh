#!/bin/bash

for f in ${HOME}/dotfiles/files/*
do
    if [ -h "$HOME/.${f##*/}" ]
        then 
            rm -f "$HOME/.${f##*/}"
    fi
    ln -s "$f" "$HOME/.${f##*/}"
done
