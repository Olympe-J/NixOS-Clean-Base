{ config, lib, pkgs, ... }:

{

  home.packages = with pkgs; [
    zsh-powerlevel10k
  ];

  home.file.".config/zsh/p10k.zsh".source = ./p10k.zsh;

  programs.eza.enable = true;

  programs.zsh = {
    enable = true;
    # dotDir = ".config/zsh";
    defaultKeymap = "emacs";
    autosuggestion.enable = true;
    enableCompletion = true;
    shellAliases = {
      l = "eza --icons";
      ll = "eza --icons -l";
      la = "eza --icons -la";
      tree = "eza --tree";
      rcp = "rsync -ahP --info=progress2";
      sshk = "kitty +kitten ssh";
      update = "sh ~/.config/shell/update.sh";
      clean-nix = "sh ~/.config/shell/clean-nix.sh";
    };
    history = {
      # path = "${config.home.homeDirectory}/.zshistory";
      ignoreDups = true;
      ignoreSpace = true;
      save = 10000;
      share = true;
    };
    historySubstringSearch = {
      enable = true;
      searchUpKey = [ "^[OA" ];
      searchDownKey = [ "^[OB" ];
    };

    initExtra = ''
      # case insensitive tab completion in a menu
      zstyle ':completion:*' completer _complete _ignored _approximate
      zstyle ':completion:*' list-colors
      zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
      zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
      zstyle ':completion:*' menu select
      zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
      zstyle ':completion:*' verbose true
      _comp_options+=(globdots)

      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source ~/.config/zsh/p10k.zsh
    '';

  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.skim = {
    enable = true;
    enableZshIntegration = true;
    defaultCommand = "rg --files --hidden";
    changeDirWidgetOptions = [
      "--preview 'eza --icons --git --color always -T -L 3 {} | head -200'"
      "--exact"
    ];
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    enableZshIntegration = true;
  };

}
