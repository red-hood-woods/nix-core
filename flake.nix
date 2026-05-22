{
  description = "Alice's Core Nix modules";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    homeManagerModules = {
      zsh = import ./modules/zsh;
      # tmux = import ./modules/tmux;
      zellij = import ./modules/zellij;
      core = import ./modules/core.nix;
    };
  };
}
