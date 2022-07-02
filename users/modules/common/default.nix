{ config, pkgs, ... }:

{
  imports = [
    ./development
    ./editor
    ./monitoring
    ./shell
    ./terminal
    ./utilities
  ];
}
