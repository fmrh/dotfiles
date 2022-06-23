{ config, pkgs, ... }:

{
  imports = [
    ./editor
    ./shell
    ./terminal
  ];
}