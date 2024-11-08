{ pkgs, ... }:

{
  home = rec {
    username = "taka";
    homeDirectory = "/home/${username}";
    stateVersion = "24.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    btop
  ];
}