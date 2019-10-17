{ config, pkgs, ... }:

with import <nixpkgs> {};
with builtins;

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
    rev = "f856c78a4a220f44b64ce5045f228cbb9d4d9f31";
    ref = "release-19.09";
  };
  dotvim = stdenv.mkDerivation {
    name = "dotvim";
    src = fetchFromGitHub {
      owner = "amaurycannesson";
      repo = "dot";
      rev = "5fe3459406412615d472b125da281418fc57442f";
      sha256 = "09zhs72gi032ln7qs2z0n4p3xzlw8ya3a2j693bwm968kzr3dl7y";
    };
    phases = [
      "unpackPhase"
      "installPhase"
    ];
    installPhase = ''
      mkdir -p $out
      cp $src/.vimrc $out/.vimrc
    '';
  };
in
{
  imports = [
    "${home-manager}/nixos"
  ];
  home-manager.users.amaury = { pkgs, ...}: {
    programs = {
      vim = {
        enable = true;
        extraConfig = builtins.readFile "${dotvim}/.vimrc";
        plugins = with vimPlugins; [ vim-plug ];
      };
      git = {
        enable = true;
        userName = "Amaury Cannesson";
      };
    };
  };
}
