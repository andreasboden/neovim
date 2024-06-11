{

  plugins.lazygit = {
    enable = true;
  };

  plugins.which-key.registrations = {
    "<leader>g" = "Git";
    "<leader>gg" = [ [ "<cmd>LazyGit<CR>" "UI" { mode = ""; } ] ];
  };
}
