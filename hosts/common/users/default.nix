{ config, ... }:

let
  mainUser = "fmrh";
  
in {
  users.users.${mainUser} = {
    isNormalUser = true;
    description = "Fillip Holgersen";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}