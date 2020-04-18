#  _____    _              
# |__  /___| |__  _ __ ___ 
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__ 
# /____|___/_| |_|_|  \___|

export ZSH="/home/$USER/.oh-my-zsh"
#export ZSH=/usr/share/oh-my-zsh/

# USER CONFIGURATION

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# For Powerlevel9k
# source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# For Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $ZSH/oh-my-zsh.sh

# Show OS info when opening a new terminal
neofetch

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_user dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{white} arch %F{cyan}linux%f'

# User with skull
user_with_skull() {
    echo -n " Terke"
}
POWERLEVEL9K_CUSTOM_USER="user_with_skull"

# Dir colours
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_SHORTEN_LENGTH=2
POWERLEVEL9K_DIR_SHORTEN_STRATEGY="truncate_from_right"

# VCS colors
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

# ALIASES

# Update the system
alias update='sudo pacman -Syyu'
alias upall="yay -Syu --noconfirm"

# Fastest mirrors
alias mirror="sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

# youtube-dl
alias yt-flac="youtube-dl --extract-audio --audio-format flac --audio-quality 0 "
alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "

# ytmdl
alias yt="ytmdl"

# Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# Music
alias music="ncmpcpp"

# ranger file manager
alias r="ranger"

# Changing "ls" to "exa"
alias ls='exa -l'

# cd..
alias ..='cd ..'

# git status
alias gs='git status'
