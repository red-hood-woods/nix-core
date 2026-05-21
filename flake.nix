{
  description = "Alice's Core Nix modules (Zsh & Tmux)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    homeManagerModules = {
      zsh = import ./modules/zsh;
      tmux = import ./modules/tmux;
      core = import ./modules/core.nix;
    };
  };
}
