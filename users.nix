{ config, pkgs, ... }:

let
  userName = "amaury";
  userDescription = "Amaury Cannesson";
in
{
  i18n = {
    consoleKeyMap = "fr";
    defaultLocale = "fr_FR.UTF-8";
  };
  users = {
    extraUsers = {
      "${userName}" = {
        isNormalUser = true;
        description = userDescription;
        extraGroups = [
          "wheel"
          "vboxsf"
        ];
        shell = pkgs.zsh;
        password = "toor";
      };
    };
  };
}
