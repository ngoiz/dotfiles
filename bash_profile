
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/norberto/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/norberto/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/norberto/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/norberto/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add Docker
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

# Ruby
# ruby is keg-only, which means it was not symlinked into /usr/local,
# because macOS already provides this software and installing another version in
# parallel can cause all kinds of trouble.

export PATH="/usr/local/opt/ruby/bin:$PATH"

# For compilers to find ruby you may need to set:
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

# Add poetry
export PATH="/Users/norberto/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/norberto/google-cloud-sdk/path.bash.inc' ]; then . '/Users/norberto/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/norberto/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/norberto/google-cloud-sdk/completion.bash.inc'; fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Git prompt ps1
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
