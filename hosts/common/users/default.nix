{ config, pkgs, ... }:

let
  mainUser = "fmrh";

in {
  users.users.${mainUser} = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Fillip Holgersen";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
