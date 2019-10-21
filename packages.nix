{ config, pkgs, ... }:

let
  sysPkgs = with pkgs; [
    wget
    tig
    htop
    zip
    unzip
    firefox
    neofetch
    glxinfo
    feh
  ];
in
{
  environment.systemPackages = sysPkgs;
}  
