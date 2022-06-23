{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "contact@fmrh.dev";
    userName = "Fillip Holgersen";
    extraConfig = {
      init = { defaultBranch = "main"; };
    };
  };

  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    enableZshIntegration = true;
    gpg-agent.pinentryFlavor = "qt";
  };
}
