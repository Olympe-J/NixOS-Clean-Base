{ pkgs, ... }:

{
  home.packages = [ pkgs.gh ];

  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;

    userName = "";
    userEmail = "";

    # signing = {
    #   key = "";
    #   signByDefault = true;
    # };

    aliases = {
      logl = "log --all --decorate --oneline --graph";
    };
  };

  services.ssh-agent.enable = true;

}