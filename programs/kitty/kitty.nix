{ config, pkgs, dotfiles, ... }:

{
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./kitty.conf;
  };
}

