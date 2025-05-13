{ config, pkgs, ... }:

{
  home.username = "xhuyz";
  home.homeDirectory = "/home/xhuyz";
  home.stateVersion = "24.11";

  # Import other modules
  imports = [
    ./programs/kitty/kitty.nix
    ./programs/git.nix
    ./programs/nushell/nushell.nix
    ./packages/default.nix
    ./programs/nixvim/nixvim.nix
  ];


  programs.home-manager.enable = true;
}

