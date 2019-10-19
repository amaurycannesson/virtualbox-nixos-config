{ config, pkgs, ... }:

{
  fonts = {
    fonts = with pkgs; [
      dejavu_fonts
      source-code-pro
      google-fonts
      fira-code
    ];
    fontconfig.defaultFonts = {
      monospace = ["Fira Code"];
      sansSerif = ["Source Sans Pro"];
    };
  };
}  
