# Clone the repo
## sudo rm -rf configuration.nix hardware-configuration.nix
## sudo cp /etc/nixos/configuration.nix ~/xhuyz-nix-flakes/
## sudo cp /etc/nixos/hardware-configuration ~/xhuyz-nix-flakes/
## sudo nixos-rebuild switch --flake ~/xhuyz-nix-flakes/
--nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
--nix-channel --update
