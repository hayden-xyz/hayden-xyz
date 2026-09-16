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
      #inputs.nixpkgs.follows = "nixpkgs";
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

    in {
    nixosConfigurations = {
      # config for my galaxy book 3 pro
      nixbook = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          #chaotic.nixosModules.default
          "${galaxybook-fixes}/nixos/speaker-fix-940xfg.nix" # galaxybook 3 pro speaker fix
          "${galaxybook-fixes}/nixos/ov02c10-26mhz-fix.nix" # trying to get the camera to work
          auto-cpufreq.nixosModules.default
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
            hardware = {
              samsungGalaxyBook = {
                speakerFix940xfg.enable = true;
                ov02c10ClockFix.enable = true;
              };
            };
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.hayden = ./home.nix;
              extraSpecialArgs = {
                inherit inputs;
                inherit stable;
              };
            };
          }
        ];
        specialArgs = {
          inherit inputs;
          inherit stable;
        };
      };
      # config for my main desktop pc
      nixos = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          #chaotic.nixosModules.default
          home-manager.nixosModules.home-manager
          catppuccin.nixosModules.catppuccin
          ./hardware-configuration.nix
          ./configuration.nix
          ./modules
          ./theme
          ./pkgs
          {
            nixpkgs.overlays = [
              inputs.millennium.overlays.default
              nix-cachyos-kernel.overlays.pinned
              #inputs.tidaLuna.overlays.default
            ];
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.hayden = ./home.nix;
              extraSpecialArgs = {
                inherit inputs;
                inherit stable;
              };
            };
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
