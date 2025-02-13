{ ... }:

{

  # home.file.".config/kitty/kitty.conf".source = ./kitty.conf;

  programs.kitty = {
    enable = true;
    #     font.name = font;
    settings = {
      window_padding_width = 5;
      background_opacity = "0.6";
      font_size = 11;
      confirm_os_window_close = 0;
      placement_strategy = "top-left";
      text_composition_strategy = "legacy";
    };
    themeFile = "ayu";
  };

}
