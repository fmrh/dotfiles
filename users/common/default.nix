{ config, pkgs, ... }:

{
  imports = [
    ./development
    ./editor
    ./shell
    ./terminal
  ];
}
