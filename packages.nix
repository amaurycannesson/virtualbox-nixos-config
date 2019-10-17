{ config, pkgs, ... }:

let
  sysPkgs = with pkgs; [
    wget
    vim
    zsh
    firefox
    glxinfo
    feh
  ];
in
{
  environment.systemPackages = sysPkgs;
}  
