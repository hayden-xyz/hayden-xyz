{
  description = "nixos config :)";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    stablepkgs = {
      url = "github:nixos/nixpkgs/nixos-26.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    chaotic = {
      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    };
    nix-cachyos-kernel = {
      url = "github:xddxdd/nix-cachyos-kernel/release";
    };
    catppuccin = {
      url = "github:catppuccin/nix";
    };
    tidaLuna = {
      url = "github:Inrixia/TidaLuna";
      #inputs.nixpkgs.follows = "nixpkgs";
    };
    nixcord = {
      url = "github:FlameFlag/nixcord";
      #inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nix-cachyos-kernel,
    ...
    }@inputs: {

    nixosConfigurations = {
      nixos = inputs.nixpkgs.lib.nixosSystem {
        modules = [
          ./hardware-configuration.nix
          ./configuration.nix
          ./default.nix
          ./modules
          ./theme
          ./pkgs
          { nixpkgs.hostPlatform = "x86_64-linux"; }
          { nixpkgs.config.allowUnfree = true; }
          #home-manager.nixosModules.home-manager
          (
            { pkgs, ... }:
            {
              nixpkgs.overlays = [
                nix-cachyos-kernel.overlays.pinned
              ];
              boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-bore-lto-zen4;
            }
          )
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
