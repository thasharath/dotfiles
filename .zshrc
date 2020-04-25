# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block, everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/thasharath/.oh-my-zsh"

PROMPT=$'\n%B%F{73} %c%f%b\n%B%(?.%{%F{green}%}.%F{red})%(!.#.λ)%f%b '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	colored-man-pages
	command-not-found
	copydir
	extract
	safe-paste
	sudo
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.utf-8
#export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Aliases
alias rm='rm -i'
alias jackett='/home/thasharath/Applications/Jackett/jackett'
alias radarr='sudo mono --debug /home/thasharath/Applications/Radarr/Radarr.exe'
alias la='ls -A'
alias l='ls -lh'
alias ll='ls -lah'
alias ..='cd ..'
alias mv='mv -i'
alias mkdir='mkdir -pv'
alias config='/usr/bin/git --git-dir=/home/thasharath/.cfg/ --work-tree=/home/thasharath'
alias reload='source ~/.zshrc'
alias myip='curl http://ipecho.net/plain; echo'
alias distro='cat /etc/*-release'
alias zshrc='nvim ~/.zshrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias xconfig='vim ~/.Xresources'
alias ytd='youtube-dl -f 136+140  --write-sub'
alias weather='curl wttr.in'
alias b='buku --suggest'
alias smloader='cd /home/thasharath/Applications/SMLoadr/ && ./SMLoadr-linux-x64'
alias vim='nvim'
export EDITOR=nvim
export BROWSER=chromium
export VISUAL=nvim
export HISTCONTROL=ignoreboth

# Keybindings
bindkey '^[[P'	delete-char		#delete
bindkey '^[[H'	beginning-of-line	#home
bindkey '^[[F'	end-of-line		#end
