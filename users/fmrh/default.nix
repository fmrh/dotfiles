{ config, pkgs, ... }:

{
  imports = [
    ./browser
    ./vscode
  ];

  home.packages = with pkgs; [
    # Music
    vcv-rack
  ];
}