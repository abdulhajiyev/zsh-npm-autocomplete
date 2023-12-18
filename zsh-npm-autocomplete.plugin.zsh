# zsh-npm-autocomplete.plugin.zsh

_npm_autocomplete() {
  local -a npm_packages
  npm_packages=($(curl -sS "https://www.npmjs.com/search/suggestions?q=${(q)words[-1]}" | jq -r '.[].name'))
  
  _describe 'npm packages' npm_packages
}

compdef _npm_autocomplete npm