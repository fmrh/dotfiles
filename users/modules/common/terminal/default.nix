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
      colors = {
        primary = {
          background = "#000000";
          foreground = "#d5c4a1";
        };
        cursor = {
          text = "#000000";
          cursor = "#d5c4a1";
        };
        normal = {
          black   = "#000000";
          red     = "#fb4934";
          green   = "#b8bb26";
          yellow  = "#fabd2f";
          blue    = "#83a598";
          magenta = "#d3869b";
          cyan    = "#8ec07c";
          white   = "#d5c4a1";
        };
        bright = {
          black   = "#665c54";
          red     = "#fe8019";
          green   = "#3c3836";
          yellow  = "#504945";
          blue    = "#bdae93";
          magenta = "#ebdbb2";
          cyan    = "#d65d0e";
          white   = "#fbf1c7";
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
