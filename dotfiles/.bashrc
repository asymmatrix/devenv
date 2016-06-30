source ~/.bash_alias

if [[ "$OSTYPE" == "darwin"* ]]; then
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi
# otherwise hard code JAVA_HOME

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# customized bash prompt
source ~/.bash_prompt
bash_prompt


export NVM_DIR="/Users/luzheng/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
