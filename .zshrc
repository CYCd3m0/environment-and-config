# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/zeek/bin:$PATH
export PATH=$PATH:/opt/metasploit-framework/bin
export PATH="/usr/local/opt/gettext/bin:$PATH"
export ZSH="/Users/ccu_demo/.oh-my-zsh"
export TERM="xterm-256color"
export HOMEBREW_NO_AUTO_UPDATE=1
ZSH_THEME=""

# For my alias
alias ccu="ssh zyj106u@csie0.cs.ccu.edu.tw"
alias c="clear"
alias dk="docker"
alias py="python3.7"
alias ipy="ipython"
alias py2="python2.7"
alias ipy2="ipython2"
alias ccat="ccat --color=\"always\""

# Tab size
tabs -4

plugins=(
        zsh-syntax-highlighting
        zsh-autosuggestions
        autojump
)

# For autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $ZSH/oh-my-zsh.sh
