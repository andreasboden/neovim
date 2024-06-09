{
  plugins.alpha = {
    enable = true;
    theme = "dashboard";
  };

  plugins.which-key.registrations = {
    "<leader>a" = [ ["<cmd>Alpha<CR>" "Open alpha"] ];
  };
}
