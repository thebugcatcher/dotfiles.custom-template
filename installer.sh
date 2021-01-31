#=============================================================
# This is a template file.
# Put your custom dotfiles installer here
# This script runs after main dotfiles installer
#=============================================================

# path where dotfiles will be cloned
DOTFILES_PATH="$HOME/.dotfiles"

# path where custom dotfiles will be cloned
DOTFILES_CUSTOM_PATH="$HOME/.dotfiles.custom"

# Prints main steps of this installer
_print_step() {
  echo -e """
==========================================================
$1..
==========================================================
"""
}

# Creates a symbolic link from source to destination
# Preserves old version of destination pre installation process with a suffix `.pre-dotfiles`
_symlink() {
  source_path=$1
  destination_path=$2

  # Link only if source path exists
  if [[ -e $source_path ]]; then
    # Preserve dotfiles pre installation process
    if [[ -e $destination_path ]]; then
      mv $destination_path "${destination_path}.pre-dotfiles"
    fi

    ln -sf $source_path $destination_path
  fi
}

main() {
  # TODO: Add custom installation commands if needed
  echo "No custom installation commands added"
}

main
