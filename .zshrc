# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

if [ -d /opt/asdf-vm ]; then
  ASDF_DIR=/opt/asdf-vm
fi

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
CASE_SENSITIVE="false"
COMPLETION_WAITING_DOTS="true"
ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_UNICODE=true
HIST_STAMPS="yyyy-mm-dd"
DISABLE_UPDATE_PROMPT="true"

# Plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git github rails bundler terraform tmux tmuxinator asdf docker docker-compose \
         ssh-agent heroku aws gh)

source $ZSH/oh-my-zsh.sh

[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

eval $(thefuck --alias qwer)

# for vim control+s (otherwise C^s locks and C^q unlocks)
# stty -ixon

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
