{ lib, system, pkgs, home-manager, ... }:

let
  mainUser = "fmrh";

in {
  fmrh = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;
    modules = [
      ./fmrh
      ./modules/common

      {
        home = {
          username = "${mainUser}";
          homeDirectory = "/home/${mainUser}";
          stateVersion = "22.05";
        };
      }
    ];
  };
}
