if status is-interactive
  function starship_transient_prompt_func
    starship module character
  end
  starship init fish | source
  enable_transience
  
  zoxide init fish | source

  # Aliases
  alias ls="eza -1"
  alias ll="eza -alh"
  alias tree="eza --tree"
  alias cat="bat"
  alias man="batman"
  alias trash="gio trash"

  # Variables
  set -g fish_greeting
  set -g fish_vi_keybinds
  set -gx EDITOR nvim
  set -gx VISUAL nvim
  set -gx SUDO_EDITOR nvim

  set -gx PIPENV_VENV_IN_PROJECT 1
  set -gx _ZO_MAXAGE 40000
  set -gx _ZO_RESOLVE_SYMLINKS 1
  set -gx _ZO_FZF_OPTS +s --preview='' --reverse --cycle --no-info --no-separator --no-scrollbar --border=rounded --bind 'tab:toggle-down,shift-tab:toggle-up'
  set -gx FZF_DEFAULT_OPTS --reverse --cycle --no-info --no-separator --no-scrollbar --border=rounded --bind 'tab:toggle-down,shift-tab:toggle-up'

  # Paths
  fish_add_path /usr/bin
  fish_add_path /usr/local/bin
  fish_add_path /home/daniel/.local/bin

  fish_add_path /home/daniel/scripts
  fish_add_path /home/daniel/scripts/script-aliases
  fish_add_path /home/daniel/.local/share/gem/ruby/3.4.0/bin
end
