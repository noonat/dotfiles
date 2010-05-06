source /etc/bashrc

PATHS="
$HOME/.local/bin
$HOME/.gem/ruby/1.9.1/bin
$HOME/.gem/ruby/1.8/bin
/opt/local/bin
/opt/local/sbin
/usr/local/bin
/usr/local/sbin
/Developer/SDKS/flex_sdk_3/bin
"
old_path=$PATH
for path in $PATHS; do
    new_path=$new_path:$path
done
export PATH=${new_path:1}:$old_path
export MANPATH=$HOME/.local/share/man:/opt/local/share/man:$MANPATH

export EDITOR=mvim
export SVN_EDITOR=vim

alias ls="ls -G"

set show-all-if-ambiguous on
set completion-ignore-case on

