# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# language and unicode
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

###################################
#     Aliases
###################################

## Universal
alias iconfig="nvim ~/.config/i3/config"
alias polyconfig="nvim ~/.config/polybar/config.ini"
alias piconfig="nvim ~/.config/picom/picom.conf"
alias alconfig="nvim ~/.config/alacritty/alacritty.toml"
alias kitconfig="nvim ~/.config/kitty/kitty.conf"
alias wezconfig="nvim ~/.config/wezterm/wezterm.lua"
alias ls="eza --icons"
alias la="ls -la"
alias lsTree="ls --tree"
alias dv="devour"
alias open="devour pcmanfm"
alias vv="nvim"
alias anaconda="source ~/anaconda3/bin/activate && anaconda-navigator"
alias neodir="cd ~/.config/nvim"
alias bsource="source .bashrc"
alias xx="exit"
alias cc="clear"
alias ai="tgpt"

## Arch
alias up="yay -Syyu"
alias ref="yay -Syy"
alias search="yay -Ss"
alias pacs="yay -Q | wc -l"
alias list="yay -Q"
alias aur_list="yay -Qm"
alias upArchMirrors="rate-mirrors --allow-root --protocol https arch | sudo tee /etc/pacman.d/mirrorlist"

###################################
#         Tmux
###################################
alias tnew="tmux new -s"
alias tls="tmux ls"
alias trename="tmux rename-session -t"
alias ta="tmux a -t"

###################################
#       Tweaks and Designs
###################################
# Startship prompt
eval "$(starship init bash)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/j/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/j/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/j/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/j/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

