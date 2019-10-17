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
      promptInit = "source ${pkgs.zsh-powerlevel9k}/share/zsh-powerlevel9k/powerlevel9k.zsh-theme";
      ohMyZsh = {
        enable = true;
        plugins = [ "git" ];
      };
    };
  };
}  
