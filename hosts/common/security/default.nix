{ config, pkgs, ... }:

{
  security = {
    # Prevent replacing the running kernel image
    protectKernelImage = true;
    # Replace sudo with doas
    sudo.enable = true;
    doas = {
      enable = true;
      extraRules = [
        {
          groups = [ "wheel" ];
          noPass = false;
          keepEnv = true;
          persist = true;
        }
      ];
    };
  };
}
