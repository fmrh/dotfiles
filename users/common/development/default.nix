{ config, pkgs, ... }:

{
  programs = {

    git = {
      enable = true;
      userEmail = "contact@fmrh.dev";
      userName = "Fillip Holgersen";
      extraConfig = {
        init = { defaultBranch = "main"; };
      };
    };

    gpg = {
      enable = true;
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    enableZshIntegration = true;
    pinentryFlavor = "qt";
  };
}
