if status is-interactive
  set -U EDITOR nvim

  # prompt
  set STARSHIP_CONFIG ~/dotfiles/.config/starship.toml # i am going to punch the maintainers of this software into the sun
  starship init fish | source

  # smart cd
  set _ZO_ECHO 1
  zoxide init --cmd cd fish | source
end

# pnpm
set -gx PNPM_HOME "/Users/la/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
