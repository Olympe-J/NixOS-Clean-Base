{ pkgs, ... }:

{

  dconf = {
    enable = true;
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };  

  home.packages = with pkgs; [
    gnomeExtensions.gtk4-desktop-icons-ng-ding
  ];

}
