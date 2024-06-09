{
  plugins.telescope = {
    enable = true;
  };

  plugins.which-key.registrations = {
    "<leader>f" = [ [ "<cmd>Telescope find_files<CR>" "Find files" { mode = ""; } ] ];
    "<leader>F" = [ [ "<cmd>Telescope live_grep<CR>" "Find in files" { mode = ""; } ] ];
  };

}
