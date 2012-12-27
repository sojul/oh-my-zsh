# Update aliases cache
alias > ~/.alias.cache

# Pompt command
function __realiaser_ps1() {
  score=$(history | tail -n 1 | cut -d ' ' -f 5-20 | realiaser)
  if [[ $score =~ ^[0-9]+$ ]]; then
    color='green'
  else
    color='red'
  fi

  echo "%{$fg[$color]%}[$score]%{$reset_color%}"
}
