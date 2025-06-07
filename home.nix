{ config, pkgs, ... }:
{
  home.username = "xhuyz";
  home.homeDirectory = "/home/xhuyz";
  home.stateVersion = "25.05";

  imports = [
    ./programs/kitty/kitty.nix
    ./programs/git.nix
    ./programs/nushell/nushell.nix
    ./packages/default.nix
    ./programs/nixvim/default.nix
  ];

  programs.home-manager.enable = true;
}
