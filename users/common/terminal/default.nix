{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      env = {
        TERM = "xterm-256color";
      };
      window = {
        opacity = 0.9;
        padding = {
          x = 6;
          y = 6;
        };
      };
      cursor = {
        style = {
          shape = "Underline";
          blinking = "On";
        };
      };
      font = {
        normal = {
          family = "Hasklug Nerd Font";
          style = "regular";
        };
        bold = {
          family = "Hasklug Nerd Font";
          style = "bold";
        };
        italic = {
          family = "Hasklug Nerd Font";
          style = "italic";
        };
        bold_italic = {
          family = "Hasklug Nerd Font";
          style = "Bold Italic";
        };
        size = 11;
      };
    };
  };
}