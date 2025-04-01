#!/bin/bash
# Symlink dotfiles using Nix Home Manager
mkdir -p ~/.config/nixpkgs
cat > ~/.config/nixpkgs/home.nix <<EOF
{ pkgs, ... }:
{
  xdg.configFile = {
    "nvim".source = /.dotfiles/nvim; 
  };
  home.packages = with pkgs; [ neovim ];
}
EOF

# Apply configs
home-manager switch

# Bootstrap NvChad (if missing)
[ ! -d ~/.config/nvim ] && git clone https://github.com/NvChad/starter ~/.config/nvim --depth=1
