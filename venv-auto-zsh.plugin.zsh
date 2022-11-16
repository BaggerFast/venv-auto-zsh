python_venv() {
  MY_VENV=./venv
  [[ -d $MY_VENV ]] && source $MY_VENV/bin/activate > /dev/null 2>&1
  # when you cd into a folder that doesn't
  [[ ! -d $MY_VENV ]] && deactivate > /dev/null 2>&1
}
autoload -U add-zsh-hook
add-zsh-hook chpwd python_venv