{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "fr";
      videoDrivers = [ "virtualbox" "modesetting" ];
      libinput = {
        enable = true;
      };
      displayManager = {
        lightdm = {
          enable = true;
        };
      };
      windowManager = {
        default = "i3";
        i3 = {
          enable = true;
        };
      };
      desktopManager = {
        default = "none";
        xterm = {
          enable = true;
        };
      };
    };
  };
}
