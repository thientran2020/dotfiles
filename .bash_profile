export PATH="/usr/local/bin:$PATH"

export PATH="/opt/anaconda3/bin:$PATH"

export PATH="/Users/thientran/.rbenv/shims:$PATH"

# export GOPATH=$HOME/go
# export GOBIN=$GOPATH/bin
# export PATH=${PATH}:$GOBIN

eval $(/opt/homebrew/bin/brew shellenv)

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[1;34m\]@\u_MACPRO\\[\033[0m\] \[\033[32m\]\w - \[\033[1;31m\]\$(parse_git_branch)\[\\033[00m\] $ "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd

complete -C /opt/homebrew/bin/terraform terraform
eval "$(starship init bash)"
export CLICOLOR=1
export LSCOLORS=BxFxGxDxExegedabagaced

exec fish


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
