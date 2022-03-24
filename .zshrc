# The following lines were added by compinstall

export ZSH=/usr/share/oh-my-zsh
export ZSH_CUSTOM=~/.config/oh-my-zsh
export XDG_CONFIG_HOME=~/.config
export PATH=$PATH:~/.bin/scripts

ZSH_THEME='myh'

source $ZSH/oh-my-zsh.sh

plugins=(
	git
)

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-/]=* r:|=*'
zstyle ':completion:*' menu select=5
zstyle ':completion:*' original false
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/jack/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install

alias zshrc='vim ~/.zshrc'
alias reload_config='source ~/.zshrc'
alias snooze='sudo systemctl suspend'
#alias mine='ethminer -U -P stratum2+tcp://32NKX2HEgUDktPehsSqHMptyH7qkCV9P6L.Archer@daggerhashimoto.usa.nicehash.com:3353'
alias eth='ethminer -U -P stratum1+tcp://1F5E5693C9d057d3e08C27B988d78516f2017993.Archer@us1.ethermine.org:4444'
alias make='make -j 24'
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
