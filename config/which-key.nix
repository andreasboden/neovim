{
  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        breadcrumb = "»";
        separator = "➜";
        group = "+";
      };
      ignoreMissing = false;
      win = {
        border = "rounded";
        wo.winblend = 0;
      };
      plugins = {
        registers = true;
        spelling = {
          enabled = true;
          suggestions = 20;
        };
        presets = {
          operators = false;
          motions = true;
          # text_objects = true;
          windows = true;
          nav = true;
          z = true;
          g = true;
        };
      };
      triggersBlackList = {
        i = [ "j" "k" ];
        v = [ "j" "k" ];
      };
      showHelp = true;
      layout = {
        height = { min = 4; max = 25; };
        width = { min = 20; max = 50; };
        spacing = 3;
        align = "left";
      };
      hidden = [ "<silent>" "<cmd>" "<Cmd>" "<CR>" "call" "lua" "^:" "^ " ];
    };
  };
}
