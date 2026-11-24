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
    millennium = {
      url = "github:SteamClientHomebrew/Millennium?dir=packages/nix";
    };
    galaxybook-fixes = {
      url = "github:Andycodeman/samsung-galaxy-book-linux-fixes";
      flake = false;
    };
    auto-cpufreq = {
      url = "github:AdnanHodzic/auto-cpufreq";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak = {
      url = "github:gmodena/nix-flatpak/?ref=latest";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    #chaotic,
    catppuccin,
    home-manager,
    nix-cachyos-kernel,
    galaxybook-fixes,
    auto-cpufreq,
    nix-flatpak,
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
      mkHost = { machineDir, homeModule }:
        inputs.nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs stable;
          };
          modules = [
            #chaotic.nixosModules.default
            catppuccin.nixosModules.catppuccin
            home-manager.nixosModules.home-manager
            machineDir
            ./modules/nixos
            ./specialisations
            ./theme
            {
              nixpkgs.overlays = [
                inputs.millennium.overlays.default
                nix-cachyos-kernel.overlays.pinned
                #inputs.tidaLuna.overlays.default
              ];
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                users.hayden = {
                  imports = [
                    catppuccin.homeModules.catppuccin
                    homeModule
                  ];
                };
                extraSpecialArgs = {
                  inherit inputs stable;
                };
              };
            }
          ];
        };

    in {
    nixosConfigurations = {
      # config for my galaxy book 3 pro
      nixbook = mkHost {
        machineDir = ./machines/nixbook;
        homeModule = ./machines/nixbook/home.nix;
      };
      # config for my main desktop pc
      nix-desktop = mkHost {
        machineDir = ./machines/nix-desktop;
        homeModule = ./machines/nix-desktop/home.nix;
      };
    };
  };
}
