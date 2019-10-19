{ config, pkgs, ... }:

{
  programs = {
    zsh = {
      enable = true;
      syntaxHighlighting = {
        enable = true;
      };
      autosuggestions = {
        enable = true;
      };
      interactiveShellInit = ''
        export TERM="xterm-256color"
      '';
      promptInit = "source ${pkgs.spaceship-prompt}/share/zsh/themes/spaceship.zsh-theme";
      ohMyZsh = {
        enable = true;
        plugins = [ "git" "docker" ];
      };
    };
  };
}  
