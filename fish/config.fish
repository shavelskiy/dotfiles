set fish_greeting ""

alias ll "eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias lla "ll -a"
alias cat "bat"
alias vim "~/.local/share/bob/nvim-bin/nvim"

if test -x "$HOME/.local/bin/cspell"
    alias cspell "$HOME/.local/bin/cspell"
else if test -x "$HOME/.local/share/nvim/mason/bin/cspell"
    alias cspell "$HOME/.local/share/nvim/mason/bin/cspell"
end

function work-clear
    for branch in (git branch | string trim | string replace -r '^\* ' '' | string match -v main | string match -v master)
        git branch -D $branch
    end
end

set -g fish_autosuggestion_enabled 0

set -gx EDITOR nvim

fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path ~/go/bin
fish_add_path /opt/homebrew/bin

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

if test -f ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end
