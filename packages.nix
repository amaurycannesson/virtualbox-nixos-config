{ config, pkgs, ... }:

let
  sysPkgs = with pkgs; [
    wget
    zsh
    firefox
    glxinfo
    feh
  ];
in
{
  environment.systemPackages = sysPkgs;
}  
