{ lib, pkgs, inputs, system, ... }:

{
  daedalus = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ./common
      ./daedalus
    ];
  };

  athena = lib.nixosSystem {
    inherit system;
    specialArgs = { inherit inputs; };
    modules = [
      ./common
      ./athena
    ];
  };
}
