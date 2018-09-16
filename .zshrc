# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin:/usr/local/bin:/home/tim/anaconda3/bin:/usr/local/texlive/2018/bin/x86_64-linux

# Path to your oh-my-zsh installation.
export ZSH="/home/tim/.oh-my-zsh"

# Vim is default editor
export EDITOR="vim"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
HYPHEN_INSENSITIVE="true"

# Power Level 9K Settings
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir vcs virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(dir_writable)
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_ETC_ICON=''
POWERLEVEL9K_HIDE_BRANCH_ICON=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Stop autocorrecting
unsetopt correct

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

### ALIASES

# Notebook shortcuts
alias jn="jupyter notebook"
alias slider="jupyter nbconvert --to slides --post serve"
alias pyconda="~/anaconda3/bin/python"

# GitHub Enterprise repos
alias openga="xdg-open https://git.generalassemb.ly/wave2-dc-planning"
alias opends="xdg-open https://git.generalassemb.ly/data-part-time"
alias openmw="xdg-open https://git.generalassemb.ly/wave3-dc-mw"
alias opentth="xdg-open https://git.generalassemb.ly/wave3-dc-tth"
alias openf="xdg-open https://git.generalassemb.ly/wave3-dc-f"

# GA Folders
export GA="~/GA/materials"
alias gotoga="cd $GA"
alias gotomw="cd $GA/../wave3/mw"
alias gototth="cd $GA/../wave3/tth"
alias gotof="cd $GA/../wave3/f"

# Misc. aliases
alias space="du -sh * | sort -h"
alias zoom="QT_SCALE_FACTOR=2 zoom"
alias op="xdg-open"
alias chremote="git remote set-url origin"
alias sleepme="systemctl suspend -i"
alias gotoi3="vim ~/.config/i3/config"
alias gotoz="vim ~/.zshrc"
alias gotov="vim ~/.vimrc"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
