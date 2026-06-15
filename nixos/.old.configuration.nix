# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      /home/hayden/git-repos/hayden-xyz/nixos/module.nix
      /home/hayden/git-repos/hayden-xyz/nixos/app.nix
      /home/hayden/git-repos/hayden-xyz/nixos/theme.nix
    ];

  ## Flakes ##
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  ## Services
  services = {
    hardware = {
      openrgb = {
        enable = true;
        motherboard = "amd";
      };
    };
  };

  ## Hardware ##
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          Experimental = true;
          FastConnectable = true;
        };
      };
    };
    i2c.enable = true;
  };

  ## Boot Parameters ##
  boot.kernelParams = [ "acpi_enforce_resources=lax" ];
  boot.kernelModules = [ "i2c-dev" "i2c-piix4" ];

  ## Limine Config ##
  boot.loader.limine = {
    enable = true;
    package = pkgs.limine-full;
    maxGenerations = 10;
    style = {
      graphicalTerminal = {};
      interface = {};
      wallpapers = [];
    };
  };

  ## Use latest kernel ##
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  ## Enable networking ##
  networking.networkmanager.enable = true;

  ## Set your time zone ##
  time.timeZone = "Europe/Berlin";

  ## Select internationalisation properties ##
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  ## Enable the X11 windowing system ##
  services.xserver.enable = false;

  ## Enable the KDE Plasma Desktop Environment ##
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;

  ## Configure keymap in X11 ##
  services.xserver.xkb = {
    layout = "de";
    variant = "";
  };

  ## Configure console keymap ##
  console.keyMap = "de";

  ## Enable printing support via CUPS ##
  services.printing.enable = true;

  ## Enable sound with pipewire ##
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  ## user account config ##
  users.defaultUserShell = pkgs.fish;
  users.users."hayden" = {
    isNormalUser = true;
    description = "hayden";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  ## programs.*.enable ##
  programs = {
    firefox.enable = true;
    fish.enable = true;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; with kdePackages; with rocmPackages; [

    ## KDE Packages ##
    kdeconnect-kde
    kate

    ## Shell Packages ##
    fastfetch
    hyfetch
    oh-my-posh

    ## Browsers ##
    brave

    ## Social ##
    signal-desktop
    #discord
    #equicord

    ## Gaming related Packages ##
    prismlauncher

    ## Required Packages ##
    git
    wget
    unzip
    rocm-smi

    ## Useful Packages ##
    deja-dup
    btop-rocm

    ## System Customization ##
    openrgb-with-all-plugins
    #papirus-icon-theme
    catppuccin-papirus-folders

  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
  ];

  ## Fonts ##
  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.caskaydia-cove
  ];

  ## Removes some KDE Apps ##
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kinfocenter
    khelpcenter
    qrca
    elisa
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall.allowedTCPPortRanges = [
  { from = 1714; to = 1764; }
  ];
  networking.firewall.allowedUDPPortRanges = [
  { from = 1714; to = 1764; }
  ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?

}
