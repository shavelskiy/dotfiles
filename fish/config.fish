set fish_greeting ""

alias ll "eza -l -g --icons"
alias lla "ll -a"
alias cspell "~/.local/share/nvim/mason/bin/cspell"
command -qv nvim && alias vim nvim

set -g fish_autosuggestion_enabled 0

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH

set -gx EXA_COLORS "\
pi=38;5;14:\
cd=38;5;14:\
di=38;5;14:\
so=38;5;14:\
ln=38;5;14:\
ex=38;5;14:\
bd=38;5;14:\
or=38;5;14:\
ur=37:\
uw=37:\
ux=37:\
ue=37:\
gr=37:\
gw=37:\
gx=37:\
tr=37:\
tw=37:\
tx=37:\
su=37:\
sf=37:\
xa=38:\
sn=37:\
sb=37:\
df=37:\
ds=37:\
uu=37:\
un=37:\
gu=37:\
gn=37:\
lc=37:\
lm=37:\
xx=37:\
da=385;245:\
in=37:\
bl=38;5;220:\
hd=37:\
lp=37:\
cc=37"
