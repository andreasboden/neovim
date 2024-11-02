{
  plugins.telescope = {
    enable = true;

    extensions = {
      file-browser = {
        enable = true;
      };
      ui-select = {
        enable = true;
      };
      frecency = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
    };

  };


  # plugins.which-key.settings.spec = [
  #   {
  #     __unkeyed-1 = "<leader>f";
  #     __unkeyed-2 = "<cmd>Telescope find_files<CR>";
  #     desc = "Find files";
  #   }
  #   {
  #     __unkeyed-1 = "<leader>F";
  #     __unkeyed-2 = "<cmd>Telescope live_grep<CR>";
  #     desc = "Find in files";
  #   }
  # ];
}
