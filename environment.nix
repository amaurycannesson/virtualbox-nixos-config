{ config, pkgs, ... }:

{
  environment = {
    etc = {
      "X11/Xresources"              .source = ./config/Xresources;
      "images/background.png"       .source = ./images/background.png;
    };
  };
}
