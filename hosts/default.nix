{ lib, pkgs, inputs, system, ... }:

{
  daedalus = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ./daedalus
      ./modules/common

      ./modules/optional/gaming
    ];
  };

  athena = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ./athena
      ./modules/common
    ];
  };
}
