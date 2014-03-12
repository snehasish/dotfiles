#!/bin/bash

for f in $HOME/dotfiles/*
do
	ln -s "$f" "$HOME/.${f##*/}"
done
