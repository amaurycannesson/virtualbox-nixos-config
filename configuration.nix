{ config, lib, pkgs, ... }:

with lib;

{
  imports = [ 
      <nixpkgs/nixos/modules/virtualisation/virtualbox-image.nix>
      ./packages.nix
      ./environment.nix
      ./fonts.nix
      ./programs.nix
      ./services.nix
      ./users.nix
      ./home.nix
    ];
  boot.loader.grub.fsIdentifier = "provided";
  powerManagement = {
    enable = false;
  };
  hardware = {
    pulseaudio = {
      enable = true;
    };
  };
  system = {
    stateVersion = "19.09";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
}
