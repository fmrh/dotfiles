{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vcv-rack
    reaper
  ];
}
