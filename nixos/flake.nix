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
    #chaotic = {
      #url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    #};
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
    galaxybook-fixes = {
      url = "github:Andycodeman/samsung-galaxy-book-linux-fixes";
      flake = false;
    };
    auto-cpufreq = {
      url = "github:AdnanHodzic/auto-cpufreq";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    #chaotic,
    home-manager,
    nix-cachyos-kernel,
    galaxybook-fixes,
    auto-cpufreq,
    ...
    }@inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      stable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true;
      };

    in {
    nixosConfigurations = {
      nixbook = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          #chaotic.nixosModules.default
          "${galaxybook-fixes}/nixos/speaker-fix-940xfg.nix"
          "${galaxybook-fixes}/nixos/ov02c10-26mhz-fix.nix"
          auto-cpufreq.nixosModules.default
          {
            hardware.samsungGalaxyBook.speakerFix940xfg.enable = true;
            hardware.samsungGalaxyBook.ov02c10ClockFix.enable = true;
          }
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
        specialArgs = {
          inherit inputs;
          inherit stable;
        };
      };
    };
  };
}
