{ pkgs, lib, ... }:
let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    ref = "nixos-24.11";
  });
in
{
  imports = [
    # For home-manager
    nixvim.homeManagerModules.nixvim
    # # For NixOS
    # nixvim.nixosModules.nixvim
    # # For nix-darwin
    # nixvim.nixDarwinModules.nixvim
  ];

programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
  };
}
