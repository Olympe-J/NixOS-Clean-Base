{ pkgs, ... }:

{

  # Update script
  home.file.".config/shell/update.sh".source = ./update.sh;

  # Clean script
  home.file.".config/shell/clean-nix.sh".source = ./clean-nix.sh;

}
