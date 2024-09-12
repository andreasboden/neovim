{
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
  };

  extraConfigLua = ''
    do
      -- make .roc files have the correct filetype
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
        pattern = { "*.roc" },
        command = "set filetype=roc",
      })

    end
  '';
}
