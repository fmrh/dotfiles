{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    autocd = true;
    shellAliases = {
      sudo = "doas";
      ls = "ls -lAh --color";
      ping = "ping -c 5";
      diff = "diff --color";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
