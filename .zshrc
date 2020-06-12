#  _____    _              
# |__  /___| |__  _ __ ___ 
#   / // __| '_ \| '__/ __|
#  / /_\__ \ | | | | | (__ 
# /____|___/_| |_|_|  \___|

export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="simple"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{purple}%}.)$USER"
  fi
}

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ex = EXtractor for all kinds of archives
# usage: ex <file>
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


# Bash insulter ;)
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

## ALIASES ##

alias update='sudo pacman -Syyu'
alias upall="yay -Syu --noconfirm"
alias mirror="sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias yt-flac="youtube-dl --extract-audio --audio-format flac --audio-quality 0 "
alias yt-mp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 "
alias yt="ytmdl"
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias music="ncmpcpp"
alias r="ranger"
alias ls='exa -l'
alias ..='cd ..'
alias gs='git status'
alias gp='git pull'
alias pub-ip="curl ipinfo.io/ip"
alias local-ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias c="clear"
alias wget="wget -c "
alias speed='speedtest-cli --simple'
alias v="vim"
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias free="free -mt"
alias merge="xrdb -merge ~/.Xresources"
alias hw="hwinfo --short"
alias ss="sudo shutdown now"
alias sr="sudo reboot"
alias q="exit"
alias fuck='sudo !!'

neofetch
