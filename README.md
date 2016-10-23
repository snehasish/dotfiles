dotfiles
========

Linux config files  
Uses gnu stow  

Usage : stow -t ~ ${folder}

### Cinnamon Configuration

Requires dconf-cli

1. Backup using `dconf dump /org/cinnamon/ > cinnamon.dconf`
2. Restore using `dconf load /org/cinnamon/ < cinnamon.dconf`

Loading is probably better done when cinnamon is not running
