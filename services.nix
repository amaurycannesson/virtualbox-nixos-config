{ config, pkgs, ... }:

{
  virtualisation = {
    docker = {
      enable = true;
    };
  };
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
          configFile = ./config/i3;
          extraSessionCommands = ''
            xrdb -merge /etc/X11/Xresources
          '';
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
