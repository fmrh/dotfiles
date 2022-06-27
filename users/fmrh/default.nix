{ config, pkgs, ... }:

{
  imports = [
    ./browser
    ./communication
    ./keyboard
    ./vscode
  ];

  home.packages = with pkgs; [
    # Music
    vcv-rack
  ];
}
