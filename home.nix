{ config, pkgs, ... }:
let
  nixvim = import (
    builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
      ref = "nixos-25.05";
    }
  );
in
{
  home.username = "xhuyz";
  home.homeDirectory = "/home/xhuyz";
  home.stateVersion = "25.05";

  # Import other modules
  imports = [
    nixvim.homeManagerModules.nixvim
    ./programs/kitty/kitty.nix
    ./programs/git.nix
    ./programs/nushell/nushell.nix
    ./packages/default.nix
    ./programs/nixvim/default.nix
  ];

  programs.home-manager.enable = true;
}
