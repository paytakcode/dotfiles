# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

case "$TERM" in
  xterm-color|*-256color|xterm-kitty) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;31m\]\u\[\033[01;37m\]@\[\033[01;36m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\u@\h:\w\$ '
fi

unset color_prompt 
fastfetch
alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias vi='nvim'
alias lg='lazygit'
alias yay='yay --noconfirm --sudoloop'
# export GTK_IM_MODULE=kime
# export QT_IM_MODULE=kime
# export XMODIFIERS=@im=kime
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(~/.local/bin/mise activate bash)"
eval "$(direnv hook bash)"
# grub-mkconfig -o /boot/grub/grub.cfg
