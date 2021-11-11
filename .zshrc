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

# pacman and yay
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'
alias upall="paru -Syu --noconfirm"
alias remove='sudo pacman -Rsn'
alias search='pacman -Ss'
alias search-local='pacman -Qs'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias unlock="sudo rm /var/lib/pacman/db.lck"

# skip integrity check
alias paruskip='paru -S --mflags --skipinteg'
alias yayskip='yay -S --mflags --skipinteg'

# get fastest mirrors
alias mirror="sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 30 --number 10 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 30 --number 10 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 30 --number 10 --sort age --save /etc/pacman.d/mirrorlist"
# our experimental - best option for the moment
alias mirrorx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 5 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias mirrorxx="sudo reflector --age 6 --latest 20  --fastest 20 --threads 20 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"

# youtube-dl and ytmdl
alias yt-flac="youtube-dl -f bestaudio --extract-audio --audio-format flac --audio-quality 0 "
alias yt-mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 "
alias yt-opus="youtube-dl -f bestaudio --extract-audio --audio-format opus --audio-quality 0 "
alias yt-vorbis="youtube-dl -f bestaudio --extract-audio --audio-format vorbis --audio-quality 0 "
alias yt-wav="youtube-dl -f bestaudio --extract-audio --audio-format wav --audio-quality 0 "
alias yt-aac="youtube-dl -f bestaudio --extract-audio --audio-format aac --audio-quality 0 "
alias yta-best="youtube-dl --extract-audio --audio-format best"
alias yt-best="youtube-dl -f bestvideo+bestaudio "
alias yt="ytmdl"

# colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# shutdown or reboot
alias ssn="sudo shutdown now"
alias sr="sudo reboot"

# switch between shells
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"

# gpg
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias fix-gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias fix-gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"
alias fix-keyserver="[ -d ~/.gnupg ] || mkdir ~/.gnupg ; cp /etc/pacman.d/gnupg/gpg.conf ~/.gnupg/ ; echo 'done'"

# grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias downgrada="downgrade --ala-url 'https://bike.seedhost.eu/arcolinux/'"

# systeminfo
alias probe="sudo -E hw-probe -all -upload"

# git stuff
alias ga='git add .'
alias gb='git branch'
alias gc='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gp='git pull origin'
alias gpo='git push origin master'
alias gr='git rebase'
alias gs='git status'
alias gt='git tag'
alias gu='git unstage'

# merge Xresources
alias merge="xrdb -merge ~/.Xresources"

# quickly kill conkies
alias kc='killall conky'

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first'
alias la='exa -a --color=always --group-directories-first'
alias ll='exa -l --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

# continue download
alias wget="wget -c "

# add new fonts
alias update-fc='sudo fc-cache -fv'

# recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# edit configs
alias bspconf="nvim ~/.config/bspwm/bspwmrc"
alias sxconf="nvim ~/.config/sxhkd/sxhkdrc"
alias polyconf="nvim ~/.config/polybar/config"
alias termconf="nvim ~/.config/alacritty/alacritty.yml"
alias vimconf="nvim ~/.config/nvim/init.vim"
alias pacmanconf="sudo nvim /etc/pacman.conf"
alias mirrorconf="sudo nvim /etc/pacman.d/mirrorlist"
alias lightdmconf="sudo nvim /etc/lightdm/lightdm.conf"
alias grubconf="sudo nvim /etc/default/grub"

# misc
alias ext-ip="curl ipinfo.io/ip"
alias local-ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias speed='speedtest-cli --simple'
alias free="free -mt"
alias df="df -h"
alias hw="hwinfo --short"
alias weather="curl http://wttr.in"
alias pg="ping google.com -c 5"
alias tb="nc termbin.com 9999"
alias music="ncmpcpp"
alias r="ranger"
alias c="clear"
alias q="exit"
alias n="neofetch"
alias cat="bat"
alias sz="source .zshrc"
alias find="fd"
alias ps="procs"
alias vim="nvim"

# the terminal rickroll
alias rickroll='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# ~/.zshrc

eval "$(starship init zsh)"

neofetch
