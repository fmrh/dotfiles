{ lib, system, pkgs, home-manager, ... }:

let
  mainUser = "fmrh";

in {
  fmrh = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;
    modules = [
      ./common
      ./fmrh

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
