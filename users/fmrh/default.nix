{ config, pkgs, ... }:

{
  imports = [
    ./browser
    ./keyboard
    ./vscode
  ];

  home.packages = with pkgs; [
    # Music
    vcv-rack
  ];
}
