{
  colorschemes.catppuccin = {
    enable = true;

    settings = {
      transparent_background = true;
      flavour = "mocha";
      custom_highlights = ''
        function(colors)
             return {
               CursorLineNr = { fg = colors.flamingo },
               LineNr = { fg = colors.surface2 },
               ["@comment"] = { fg = colors.flamingo, style = { "italic" } },
             }
           end
      '';
      integrations = {
        notify = true;
      };
    };

  };
}
