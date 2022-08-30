
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color" 


ZSH_THEME="powerlevel10k/powerlevel10k"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off




bindkey -v

bindkey '^d' "clear"


alias ls='exa --icons --tree --level=2' # my preferred listing
alias la='exa -a  --group-directories-first'  # all files and dirs
alias ll='exa -l --tree --level=2 --icons '  # long format
alias lt='exa -aT --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias notes='vim `fzf --preview="bat --color=always --style=header,grid --line-range :300 {}" --preview-window=right:70%:wrap`'

DISABLE_LS_COLORS="true"


DISABLE_AUTO_TITLE="true"


plugins=(
	git
	rust
	zsh-autocomplete
	zsh-autosuggestions
	zsh-syntax-highlighting
	web-search
	dirhistory
	)

source $ZSH/oh-my-zsh.sh



clear


weather-fetch   

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/uwo/.bun/_bun" ] && source "/home/uwo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


