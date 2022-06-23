{
  description = "Nixos system config by fmrh";

  inputs = {
    nixpkgs = { url = "github:nixos/nixpkgs/nixos-unstable"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
  };

  outputs = 
  { self
  , nixpkgs
  , home-manager
  , ... } @ inputs:
    
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };
      lib = nixpkgs.lib;

    in {
      nixosConfigurations = (
        import ./hosts {
          inherit lib pkgs inputs system;
	      }	
      );
      homeConfigurations = (
        import ./users {
         inherit lib system pkgs home-manager;
        }
      );
    };
    
}
