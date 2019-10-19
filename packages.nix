{ config, pkgs, ... }:

let
  sysPkgs = with pkgs; [
    wget
    tig
    htop
    zip
    unzip
    firefox
    glxinfo
    feh
  ];
in
{
  environment.systemPackages = sysPkgs;
}  
