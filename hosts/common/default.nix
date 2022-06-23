{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./audio
      ./fonts
      ./locale
      ./networking
      ./nix
      ./ssh
      ./users
      ./xserver
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment = {

    variables = {
      TERMINAL = "alacritty";
      EDITOR = "nvim";
      VISUAL = "nvim";
    };

    defaultPackages = lib.mkForce [];

    # System packages
    systemPackages = with pkgs; [
      
      # Utilities
      wget
      ranger
      xarchiver
      p7zip
      ripgrep
      fd

      # GUI 
      bitwarden
      qbittorrent
      spotify
      notion-app-enhanced
      libreoffice
      protonvpn-gui
    ];
  };
}
