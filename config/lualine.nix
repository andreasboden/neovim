{
  plugins.lualine = {
    enable = true;
    settings = {
      options.theme.__raw = ''
        {
          normal = {
            a = { fg = '#080604', bg = '#6E9EBE', gui = 'bold' },
            b = { fg = '#F0ECE4', bg = '#28231D' },
            c = { fg = '#A09B91', bg = '#12100D' },
          },
          insert = {
            a = { fg = '#080604', bg = '#8EC07C', gui = 'bold' },
            b = { fg = '#F0ECE4', bg = '#28231D' },
            c = { fg = '#A09B91', bg = '#12100D' },
          },
          visual = {
            a = { fg = '#080604', bg = '#B882A0', gui = 'bold' },
            b = { fg = '#F0ECE4', bg = '#28231D' },
            c = { fg = '#A09B91', bg = '#12100D' },
          },
          replace = {
            a = { fg = '#080604', bg = '#CC6666', gui = 'bold' },
            b = { fg = '#F0ECE4', bg = '#28231D' },
            c = { fg = '#A09B91', bg = '#12100D' },
          },
          command = {
            a = { fg = '#080604', bg = '#E8B44C', gui = 'bold' },
            b = { fg = '#F0ECE4', bg = '#28231D' },
            c = { fg = '#A09B91', bg = '#12100D' },
          },
          inactive = {
            a = { fg = '#787369', bg = '#12100D' },
            b = { fg = '#787369', bg = '#12100D' },
            c = { fg = '#787369', bg = '#12100D' },
          },
        }
      '';
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
