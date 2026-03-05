{
  plugins.lualine = {
    enable = true;
    settings = {
      options.theme = "16color";
      iconsEnabled = true;
      disabledFiletypes = {
        statusline = [
          "alpha"
          "dashboard"
        ];
      };
      sections = {
        lualine_a = [ "branch" "diagnostics" ];
        lualine_b = [ "mode" ];
        lualine_c = [ ];
        lualine_x = [ "diff" "spaces" "encoding" "filetype" ];
        lualine_y = [ "location" ];
        lualine_z = [ "progress" ];
      };
    };
  };
}
