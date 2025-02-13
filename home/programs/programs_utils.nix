{ pkgs, ... }:

{

  home.packages = with pkgs; [

    vlc
    gimp
    filezilla
    tor-browser
    gparted
    libreoffice-qt
    # texlive.combined.scheme-full

    # discord
    # signal-desktop
    # obsidian

    # keepassxc
    # syncthing

    # gnupg

    # python3

    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      scipy
      numpy
      # colorthief
    ]))

  ];

}
