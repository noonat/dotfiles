# commands to start brew packages:
# - memcached
# - mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf
# - mysql.server start
# - redis-server /usr/local/etc/redis.conf

source /etc/bashrc

export DOTFILES=$HOME/Source/noonat/dotfiles

PATHS="
/Developer/SDKs/air_sdk_2/bin
/Developer/SDKS/flex_sdk_4/bin
/usr/local/Cellar/python/2.7/bin
/usr/local/bin
/usr/local/sbin
/usr/local/share/python
$HOME/.rvm/bin
"
old_path=$PATH
for path in $PATHS; do
    new_path=$new_path:$path
done
export PATH=${new_path:1}:$old_path
export HAXE_LIBRARY_PATH="`brew --prefix`/lib/haxe/std"
export EDITOR=vim
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export SVN_EDITOR=vim

# ec2
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem 2>/dev/null | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem 2>/dev/null | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

alias ls="ls -G"
alias slime="open -a 'Sublime Text 2'"
set show-all-if-ambiguous on
set completion-ignore-case on
shopt -s histappend

# keep history synced between terminals
# export PROMPT_COMMAND="history -a; history -n"

PS1='\[\e[1;30m\]\u@\h \[\e[1;36m\]\W \[\e[1;30m\]\$\[\e[0m\] '

complete -C $DOTFILES/rake-completion.rb -o default rake

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
rvm 1.9.2-p290

have() {
    unset -v have
    PATH=$PATH:/sbin:/usr/sbin:/usr/local/sbin type $1 &>/dev/null &&
        have=”yes”
}
for file in `brew --prefix`/etc/bash_completion.d/*; do
    if [ -f $file ]; then
        . $file
    fi
done

