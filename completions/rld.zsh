if [[ ! -o interactive ]]; then
    return
fi

compctl -K _rld rld

_rld() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(rld commands)"
  else
    completions="$(rld completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
