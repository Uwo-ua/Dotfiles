# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
if [ "$TERM" = "linux" ]; then
	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
	clear
fi
export PATH="/home/uwo/.cabal/bin:/home/uwo/.local/bin/:/home/uwo/.ghcup/bin:/home/uwo/.bun/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/home/uwo/.dotnet/tools:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color" 
export STARSHIP_CONFIG="$HOME/.config/starship.toml"


bindkey -s '^f' 'nvim $(fzf)\n'


alias ls=' exa --icons --tree --level=2 ' # my preferred listing
alias lp='  exa --icons '

alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

alias mk="mkdir"

alias v="nvim"
alias lv="lvim"

alias bat='bat --theme="Catppuccin-mocha"'

alias notes='vim `fzf --preview="bat --color=always --style=header,grid --line-range :300 {}" --preview-window=right:70%:wrap`'

alias inst="paru -Slq | fzf --multi --preview 'paru -Si {1}' | xargs -ro paru -S"

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

source ./Git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


clear
 
weather-fetch $APPID 'Kryvyi Rih, ua'

eval "$(starship init zsh)"

export FONTFACE="Terminus"
export FONTSIZE="12x6"

export FZF_DEFAULT_OPTS=" \
--preview 'bat --style=numbers --color=always --theme='Catppuccin-mocha' --line-range :500 {}' \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/uwo/.bun/_bun" ] && source "/home/uwo/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"



fpath=($fpath "/home/uwo/.zfunctions")


[ -f "/home/uwo/.ghcup/env" ] && source "/home/uwo/.ghcup/env" # ghcup-env
source /home/uwo/Git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
