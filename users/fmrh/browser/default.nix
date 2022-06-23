{ config, pkgs, ... }:

let
  myExtensions = with pkgs.nur.repos.rycee.firefox-addons; [
    ublock-origin
  ];

in {
  programs.firefox = {
    enable = true;
  };
}
