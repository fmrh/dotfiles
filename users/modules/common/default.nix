{ config, pkgs, ... }:

{
  imports = [
    ./editor
    ./monitoring
    ./shell
    ./terminal
    ./utilities
  ];
}
