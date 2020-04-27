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
pfetch

# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon custom_user dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} \uf303 %F{cyan} Arch %F{white}Linux%f'

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
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='blue'
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

# Show my external ip address
alias ip-ext="curl ipinfo.io/ip"

# Show my local ip address
alias ip-local="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"

# Clear the screen
alias c="clear"

# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Continue download
alias wget="wget -c "

# Check download and upload speed
alias speed='speedtest-cli --simple'

# vim
alias v="vim"

# Switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# free
alias free="free -mt"

# merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Hardware info --short
alias hw="hwinfo --short"

# shutdown or reboot
alias ss="sudo shutdown now"
alias sr="sudo reboot"

# Bash insulter
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi