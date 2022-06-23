{ lib, system, pkgs, home-manager, ... }:

let
  mainUser = "fmrh";

in {
  fmrh = home-manager.lib.homeManagerConfiguration {
    inherit system pkgs;
    username = "${mainUser}";
    homeDirectory = "/home/${mainUser}";
    stateVersion = "22.05";
    configuration = {
      imports = [
        ./common
        ./fmrh
      ];
    };
  };
}
