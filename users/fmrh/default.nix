{ config, pkgs, ... }:

{
  imports = [
    ./browser
    ./communication
    ./keyboard
    ./music
    ./vscode
  ];
}
