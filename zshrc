[[ -f ~/.zsh_config ]] && source ~/.zsh_config

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# extra files in ~/.zsh/configs/pre , ~/.zsh/configs , and ~/.zsh/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in "$_dir"/pre/**/*~*.zwc(N-.); do
        . $config
      done
    fi

    for config in "$_dir"/**/*(N-.); do
      case "$config" in
        "$_dir"/(pre|post)/*|*.zwc)
          :
          ;;
        *)
          . $config
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in "$_dir"/post/**/*~*.zwc(N-.); do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.zsh/configs"

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
#     tmux attach -t default || tmux new -s default
# fi

# pnpm
export PNPM_HOME="/Users/nick/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export PATH="$PATH:$HOME/.maestro/bin"

# bun completions
[ -s "/Users/nick/.bun/_bun" ] && source "/Users/nick/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Created by `pipx` on 2024-04-02 16:38:45
export PATH="$PATH:/Users/nick/.local/bin"

if command -v zoxide &> /dev/null 
then
  eval "$(zoxide init zsh)"
fi

if command -v starship &> /dev/null 
then
  eval "$(starship init zsh)"
fi

