{ config, pkgs, ... }:

{
  services.flameshot = {
    enable = true;
  };

  programs.mpv = {
    enable = true;
  };
}
