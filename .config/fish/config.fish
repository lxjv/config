if status is-interactive
  set -U EDITOR nvim
  
  # Set up fzf key bindings
  fzf --fish | source

  # prompt
  starship init fish | source

  # smart cd
  set _ZO_ECHO 1
  zoxide init --cmd cd fish | source

  # eza stuff
  set EZA_STANDARD_OPTIONS --group --group-directories-first
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

thefuck --alias | source
