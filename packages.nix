{ config, pkgs, ... }:

let
  sysPkgs = with pkgs; [
    wget
    vim
    zsh
    firefox
    glxinfo
  ];
in
{
  environment.systemPackages = sysPkgs;
}  
