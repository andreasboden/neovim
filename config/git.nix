{

  plugins.neogit = {
    enable = true;
  };

  plugins.which-key.registrations = {
    "<leader>g" = "Git";
    "<leader>gg" = [ [ "<cmd>lua require('neogit').open()<CR>" "UI" { mode = ""; } ] ];
    "<leader>gc" = [ [ "<cmd>lua require('neogit').open({ \"commit\" })<CR>" "Commit" { mode = ""; } ] ];
  };
}
