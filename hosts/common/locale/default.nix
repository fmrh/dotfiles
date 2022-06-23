{ config, pkgs, ... }:

{
    # Time zone
  time.timeZone = "Europe/Dublin";

  # Internationalisation
  i18n.defaultLocale = "en_IE.utf8";
}