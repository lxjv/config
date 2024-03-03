# Laker's .zshrc

# inserting custom files
source ~/.alias
source ~/.env.local
source ~/.func

# variables for programs
export EDITOR=nvim
export VISUAL=neovide

# prompt
eval "$(starship init zsh)" # might make my own prompt tbh

# zoxide - cd but smarter
eval "$(zoxide init --cmd cd zsh)"
set autocd

# other commands
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. "$HOME/.asdf/asdf.sh"

# bun completions
[ -s "/Users/la/.bun/_bun" ] && source "/Users/la/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
