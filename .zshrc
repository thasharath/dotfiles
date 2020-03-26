# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/thasharath/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="aphrodite"
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '
ZSH_THEME="kimwz"

#PROMPT="%B%F{yellow} [%f%b%B%F{red}%n%f%b%B%F{yellow}@%f%b%B%F{red}%m%f%b%B%F{yellow}]%f%b%B %b%B%F{blue}%~%f%b
#%B%F{green}$%f%b%B %b"
#
## Load version control information
#autoload -Uz vcs_info
#precmd() { vcs_info }
#
## Format the vcs_info_msg_0_ variable
#zstyle ':vcs_info:git:*' formats ' %b'
#
## Set up the prompt (with git branch name)
#setopt PROMPT_SUBST
##PROMPT='%n in ${PWD/#$HOME/~} $ > '
#RPROMPT=%B%F{green}\$vcs_info_msg_0_%f%b



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
 DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
	git
	emoji
	colored-man-pages
	command-not-found
	compleat
	copydir
	cp
	extract
	fbterm
	safe-paste
	screen
	torrent
	vi-mode
	emoji-clock
	rand-quote
	themes
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.utf-8
#export LANG=en_US.UTF-8


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias rm="rm -i"
alias jackett="Documents/Jackett/jackett"
alias radarr="sudo mono --debug Documents/Radarr/Radarr.exe"
alias la="ls -a"
alias l="ls -lh"

#LANG="en_US.UTF-8"
#LC_COLLATE="en_US.UTF-8"
#LC_CTYPE="en_US.UTF-8"
#LC_MESSAGES="en_US.UTF-8"
#LC_MONETARY="en_US.UTF-8"
#LC_NUMERIC="en_US.UTF-8"
#LC_TIME="en_US.UTF-8"
#LC_ALL="en_US.UTF-8"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Import colorscheme from 'wal' asynchronously
## &   # Run the process in the background.
## ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)
#
## Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences
#
## To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

export EDITOR=/usr/bin/vim

#/home/thasharath/.scripts/ufetch-gnu2

alias config='/usr/bin/git --git-dir=/home/thasharath/.cfg/ --work-tree=/home/thasharath'
alias neofetch='neofetch --w3m /home/thasharath/Pictures/pictures/pepe/pepe-0217.png'
alias ytd='youtube-dl -f 136+140  --write-sub'
alias weather='curl wttr.in'
alias b='buku --suggest'

coronal
