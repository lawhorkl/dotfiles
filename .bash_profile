source ~/.profile
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  GIT_PS1_SHOWDIRTYSTATE=true
  export PS1='\e[0;202m[\u@mbp \w$(__git_ps1)]\n\e[m \$> '
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#bash_profile
function bgrep {
  ag "$@" $(bundle show --paths) .
}

export CLICOLOR=1

export PATH=$PATH:/Users/kyle/Downloads/fits-0.8.5/

