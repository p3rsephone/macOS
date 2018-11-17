# ============================
# ========= General ==========
# ============================

export TERM="xterm-256color"
eval $(thefuck --alias)
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sudo git history tmux tmuxinator taskwarrior)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# ============================
# ========== Theme ===========
# ============================

POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

#POWERLINE settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%F{white}$ "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history)


# ============================
# ========= Exports ==========
# ============================

export EDITOR="vim"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:/Volumes/Macintosh\ HD/Tania\ Silva/.vimpkg/bin:/usr/local/apache-maven-3.5.0/bin:/usr/local/opt/kwm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:/tdosilva.rvm/bin:/usr/local/sicstus4.3.0/bin"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

#MongoDB
export MONGO_PATH=/usr/local/Cellar/mongodb/3.4.10
export PATH="$PATH:$MONGO_PATH/bin"

# Node path
export NODE_PATH='/usr/local/lib/node_modules'


# ============================
# ========== Alias ===========
# ============================

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.macOS/.zshrc"
alias is="ionic serve"
alias tmuxconfig="vim ~/.macOS/.tmux.conf"
alias pause="spotify pause"
alias play="spotify play"
alias nxt="spotify next"
alias prv="spotify prev"
alias sinfo="spotify status"
alias replay="spotify replay"
alias cat="ccat"
alias gc="git clone"
alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles true";killall Finder
alias hideHiddenFiles="defaults write com.apple.finder AppleShowAllFiles false";killall Finder
alias py="python3.6"
alias gcmsg="gcm"
alias mk="gcc-7"
alias tn="tmux new"
alias colours='for i in {0..255} ; do                                                                                                                     printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
        printf "\n";
    fi
done'

# ============================
# ======== Functions =========
# ============================

# Homestead and Vagrant
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# VirtualBox headless vms
function vm(){
 local _help="usage: vm [on/off/list] [VM Name]"
 local _ssh="Connecting through SSH..."

 if (($# == 0))
 then
   echo $_help
 else
   if [ "$1" = 'on' ]; then
      # INSERT NEW VMs SSH HERE
      local _linux="persephone@192.168.56.10"
      local _kali="root@192.168.56.102"
     
      if [ "$2" = 'BasicLinux' ]
      then
          VBoxManage startvm $2 --type headless && echo $_ssh && ssh $_linux
        elif [ "$2" = 'Kali' ]
      then
          VBoxManage startvm $2 --type headless && echo $_ssh && ssh $_kali
      else
          echo "VM Not recognized"
      fi
    elif [ "$1" = 'off' ]
  then
      VBoxManage controlvm $2 poweroff
    elif [ "$1" = 'list' ]
  then
      VBoxManage list vms
  else
      echo $_help
  fi
 fi

}
# ============================
# ======== Temporary =========
# ============================

function prolog() {
    ( cd ~/Google\ Drive/MIEInf/S6/SRCR/Fichas && swipl $* )
}

alias cg="cd ~/Google\ Drive/MIEInf/S6/CG/"
alias pl="cd ~/Google\ Drive/MIEInf/S6/PL/"
alias basicLinux="ssh persephone@192.168.56.10"
alias kali="ssh root@192.168.56.102"
