{
  description = "hayden's nixos config :)";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    nixpkgs-stable = {
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
      inputs.nixpkgs.follows = "nixpkgs";
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
    nixpkgs-stable,
    chaotic,
    home-manager,
    nix-cachyos-kernel,
    ...
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      stablepkgs = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };

    in {
    nixosConfigurations = {
      nixbook = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          chaotic.nixosModules.default
          ./hardware-configuration.nix
          ./configuration.nix
          ./modules
          ./theme
          ./pkgs
          {
            nixpkgs.overlays = [
              nix-cachyos-kernel.overlays.pinned
              #inputs.tidaLuna.overlays.default
            ];
          }
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
