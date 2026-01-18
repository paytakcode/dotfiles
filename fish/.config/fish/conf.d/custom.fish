function execute_last_command
  eval $history[1]
end

alias vi='vim'
alias lg='lazygit'
alias pacman='pacman --noconfirm'
alias yay='yay --noconfirm --sudoloop'
alias !! execute_last_command
fish_add_path $HOME/.local/bin
mise activate fish | source
direnv hook fish | source
