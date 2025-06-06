{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = "xhuyz";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  users.users.xhuyz.shell = pkgs.nushell;
  programs.nix-ld = {
  enable = true;
  };
  environment.systemPackages = with pkgs; [
    wget
    neovim
    git
    neofetch
    cmatrix
    tmux
    tmuxp
    starship
    yazi
    lazygit
  ];
  system.stateVersion = "24.11"; # Did you read the comment?
}
