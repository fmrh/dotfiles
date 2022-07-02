{ config, pkgs, ... }:

{
  networking = {
    networkmanager.enable = true;
    
    # firewall = {
    #   allowedTCPPorts = [];
    #   allowedUDPPorts = [];
    # };

    # proxy = {
    #   default = "http://user:password@proxy:port/";
    #   noProxy = "127.0.0.1,localhost,internal.domain";
    # };
  };
}