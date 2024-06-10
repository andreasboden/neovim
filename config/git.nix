{

  plugins.lazygit = {
    enable = true;
  };

  plugins.which-key.registrations = {
    "<leader>g" = "Git";
    "<leader>gl" = [ [ "<cmd>LazyGit<CR>" "LazyGit" { mode = ""; } ] ];
  };
}
