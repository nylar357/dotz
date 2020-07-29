# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nylar/.oh-my-zsh"


# Custom ZSH Alias #

alias rofi="rofi -show"
alias vimm=".local/kitty.app/bin/kitty --config .local/kitty.app/bin/kitty.conf vim"
alias gotop="./apps/gotop/scripts/gotop --color=vice -a -s"
alias ngrok="./ngrok"

# ColorLS Alias #
# Directories Dark - Columns #
alias ld="sudo colorls -d -c --dark"
# Files Dark #
alias lls="sudo colorls -f --gs --dark"
# (HIDDEN) sort files first #
alias lla="sudo colorls -A -f --gs --dark"
# !SAVE! TREE SORTING & COLORING BY EXTENSION, DEPTH=2 !SAVE! #
alias lt="sudo colorls -A -X --tree=1 "
# Common System Alias #
alias services="sudo service --status-all"
alias apd="sudo service apache2 stop"
alias apu="sudo service apache2 start"
alias sshu="sudo service ssh start"
alias sshd="sudo service ssh stop"
alias pyserve="python -m http.server -p 8888"
alias phpserve="php -S localhost:8888"
alias ngrokhttp="./ngrok http 4444"
alias ngrokssh="./ngrok ssh 22"
alias ngrokweb="firefox --new-window http://127.0.0.1:4040"
alias c="clear"
alias s="sudo"
alias mv="sudo mv"
alias nano="sudo nano"
# NORDVpn Alias' #
alias nordvpn-us="nordvpn connect United_States"
alias nordvpn-cz="nordvpn connect Czech_Republic"
alias nordvpn-es="nordvpn connect Estonia"
alias nordvpnd="nordvpn disconnect"
# SSH Alias' #
alias sshstart="sudo service ssh start"
alias sshstop="sudo service ssh stop"

# --- even-better-ls ---  
#B
#LS_COLORS=$(ls_colors_generator)
# run_ls() {
#         ls-i --color=auto --group-directories-first -w $(tput cols) "$@"
# }
#
# run_dir() {
#         dir-i --color=auto --group-directories-first -w $(tput cols) "$@"
# }
#
# run_vdir() {
#          vdir-i --color=auto --group-directories-first -w $(tput cols) "$@"
# }
#alias ls="run_ls"
#alias dir="run_dir"
#alias vdir="run_vdir"



###POWERLEVEL 9K PROMPT & OPTIONS SECTION###

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(disk_usage dir_writable dir vcs newline user status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_wifi_signal)
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_LEFT_SEGMENT_SEPERATOR=$u'\uE0B7'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPERATOR=$u'\uE0B7'        
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=$u'\uE0B5'
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=$u'\uE0B5'
POWERLEVEL9K_BATTERY_STAGES="▁▂▃▄▅▆▇█"
#POWERLEVEL9K_VPN_IP_INTERFACE="tun0"	

# Custom Segment Prompt - Wifi Signal Monitor #

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep V01D-5G | awk '{print $7}')
    local color='%F{black}'
    [[ $signal -gt 75 ]] && color='%F{black}'
    [[ $signal -lt 50 ]] && color='%F{black}'
echo -n "%{$color%}db-$signal%{%f%}" # \uf230 is 
}


## Git Repo Tweaks ##
POWERLEVEL9K_VCS_SHOW_SUBMODULE_DIRTY="TRUE"
POWERLEVEL9K_VCS_GIT_HOOKS=(
B
vcs-detect-changes
git-untracked
git-aheadbehind
git-stash
git-remotebranch
git-tagname
)




# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

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
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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

## ZSH Plugins ##

plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
autojump
)


## Custom Sourcing ##
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

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


# Github GPG Signing script #

#if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#    source ~/.gnupg/.gpg-agent-info
#    export GPG_AGENT_INFO
#else
#    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
#fi



### Dir Tree ###

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

source $(dirname $(gem which colorls))/tab_complete.sh



# DOCKER ALIAS SEE:/home/nylar/git/DocumentsOfImport/'Docker For Pentest - ropnop.pdf' #

# Drop into an interactive shell in a fresh disposable enviroment. Test and when your finished type "exit" : Destroyed #
alias dockershell="docker run --rm -i -t --entrypoint=/bin/bash"  
# Docker Shell BASH #
alias dockershellsh="docker run --rm -i -t --entrypoint=/bin/sh"
# Docker Shell SH #

# Mount current directory inside a disposable docker container, interact with files inside a disposable env, PERSISTS #

#function dockershellhere() {
#   dirname=$(PWD##'/}
#   docker run --rm -it --entrypoint=/bin/bash -v 'pwd':/${dirname} -w /${dirname} "$@"
#}

#Function dockershellshhere(){
#   dirname=${PWD##*/}
#   docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
#}

	# What do these do? They simply let me specify an image and drop into an interactive shell in a    #
	# fresh, disposable environment. I can look around, make changes, test things, and then when I'm   #
	# finished and type "exit", everything is destroyed and cleaned up.				   #
	# dockershell executes /bin/bash, while dockershellsh executes /bin/sh. This is useful since not   #
	# every Docker image has bash installed.							   #
	# The ones that end in here take it one step further and mount my current working directory inside #
	# the disposable container. This lets me interact with my files inside the disposable environment, #
	# and anything I write to that directory while inside the container persists after exit. 	   #



