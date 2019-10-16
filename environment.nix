{ config, pkgs, ... }:

{
  environment = {
    etc = {
      "X11/Xresources"   .source = ./config/Xresources;
    };
  };
}
