if status is-interactive
  starship init fish | source
  zoxide init fish | source

  # Aliases
  alias trash="gio trash"
  alias ls="eza -1"
  alias ll="eza -alh"
  alias tree="eza --tree"
  alias cat="bat"
  alias man="batman"

  # Variables
  set -g fish_greeting
  set -g fish_vi_keybinds
  set -gx EDITOR nvim
  set -gx VISUAL nvim
  set -gx SUDO_EDITOR nvim

  set -gx PIPENV_VENV_IN_PROJECT 1
  set -gx _ZO_MAXAGE 40000
  set -gx _ZO_RESOLVE_SYMLINKS 1

  # Paths
  fish_add_path /usr/bin
  fish_add_path /usr/local/bin
  fish_add_path /home/daniel/.local/bin

  fish_add_path /home/daniel/scripts
  fish_add_path /home/daniel/scripts/script-aliases
  fish_add_path /home/daniel/.local/share/gem/ruby/3.4.0/bin
end
