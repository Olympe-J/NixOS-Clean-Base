{
  config,
  pkgs,
  inputs,
  ...
}:

{

  imports = [
    ../../home/desktop
    ../../home/programs
    ../../home/shell
  ];

  home = {
    username = "stephanie";
    homeDirectory = "/home/stephanie";

    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
