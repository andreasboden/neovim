{
  plugins.which-key = {
    enable = true;
    ignoreMissing = false;
    icons = {
      breadcrumb = "»";
      separator = "➜";
      group = "+";

    };
    plugins = {
      marks = true;
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

    window = {
      border = "rounded";
      position = "bottom";
      margin = { top = 1; right = 0; bottom = 1; left = 0; };
      padding = { top = 2; right = 2; bottom = 2; left = 2; };
      winblend = 0;
    };

    layout = {
      height = { min = 4; max = 25; };
      width = { min = 20; max = 50; };
      spacing = 3;
      align = "left";
    };
    hidden = [ "<silent>" "<cmd>" "<Cmd>" "<CR>" "call" "lua" "^:" "^ " ];
    triggers = "auto";
    showHelp = true;

    triggersBlackList = {
      i = [ "j" "k" ];
      v = [ "j" "k" ];
    };

  };
}
