{
  plugins.mini = {
    enable = true;
    modules = {
      comment = {
        mappings = {
          comment = "gc";
          comment_line = "gcc";
          textObject = "gc";
        };
      };
      indentscope = {
        enable = true;
      };
      jump = {
        enable = true;
      };
      pairs = {
        enable = true;
      };
      tabline = {
        enable = true;
      };
      starter = {
        enable = true;
      };
      sessions = {
        enable = true;
        autoread = true;
        autowrite = true;
      };
      files = {
        enable = true;
        windows = {
          preview = true;
        };
        mappings = {
          close = "q";
          go_in = "l";
          go_in_plus = "<CR>";
          go_out = "h";
          go_out_plus = "H";
          mark_goto = "\"";
          mark_set = "m";
          reset = "<BS>";
          reveal_cwd = "@";
          show_help = "g?";
          synchronize = "=";
          trim_left = "<";
          trim_right = ">";
        };
      };
    };
  };


  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>e";
      __unkeyed-2 = "<cmd>:lua MiniFiles.open()<CR>";
      desc = "Explorer";
    }
  ];
}
