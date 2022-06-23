{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot = {
    cleanTmpDir = true;
    loader = {
      grub = {
        enable = true;
	      device = "/dev/nvme0n1";
	      configurationLimit = 5;
      };
      timeout = 3;
    };
    initrd = {
      availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-amd" ];
    extraModulePackages = [ ];
  };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/94d41881-1aa2-49ed-b5f5-f38cb77fc6f4";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/e12cd45f-e732-4c27-b8ed-ccae6e0b3ba6"; }
    ];

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  networking = {

    hostName = "daedalus";

    # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
    # (the default) this is the recommended approach. When using systemd-networkd it's
    # still possible to use this option, but it's recommended to use it in conjunction
    # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
    useDHCP = lib.mkDefault true;
    interfaces.enp7s0.useDHCP = lib.mkDefault true;
  };

  # DO NOT TOUCH!
  system.stateVersion = "22.05";
}
