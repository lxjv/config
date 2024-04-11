# Laker's .zshrc

# inserting custom files
source ~/.alias
source ~/.env.local
source ~/.func

# variables for programs
export EDITOR=nvim
export VISUAL=neovide

# prompt - might replace soon
export STARSHIP_CONFIG=~/dotfiles/.config/starship.toml # I have NO idea why this works but it does
eval "$(starship init zsh)"

# zoxide - cd but smarter
eval "$(zoxide init --cmd cd zsh)"
set autocd

# atuin - shell history, but smarter
eval "$(atuin init --disable-up-arrow zsh)"

# other commands
eval $(thefuck --alias) # funniest command ever

# MacOS only config
if [[ $(uname) == "Darwin" ]]; then
	. ~/.config/zsh/mac.zsh
fi