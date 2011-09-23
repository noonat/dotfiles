source /etc/bashrc

PATHS="
$HOME/.local/bin
/Developer/SDKs/air_sdk_2/bin
/Developer/SDKS/flex_sdk_4/bin
/usr/local/Cellar/python/2.7/bin
/usr/local/bin
/usr/local/sbin
/usr/local/share/python
"
old_path=$PATH
for path in $PATHS; do
    new_path=$new_path:$path
done
export PATH=${new_path:1}:$old_path
export MANPATH=$HOME/.local/share/man:/opt/local/share/man:$MANPATH
export HAXE_LIBRARY_PATH="`brew --prefix`/lib/haxe/std"
#export NEKOPATH="`brew --prefix`/lib/neko"

export EDITOR=vim
export SVN_EDITOR=vim

alias ls="ls -G"
alias slime="open -a 'Sublime Text 2'"

set show-all-if-ambiguous on
set completion-ignore-case on

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rvm 1.8.7

#source /Developer/SDKs/alchemy_0.5a/alchemy-setup
