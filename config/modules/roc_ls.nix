{ pkgs, config, lib, ... }:
let cfg = config.plugins.lsp.servers.roc_ls;
in
{
  options = {
    plugins.lsp.servers.roc_ls = {
      enable = lib.mkEnableOption "roc_ls";
    };
  };

  config = lib.mkIf cfg.enable {
    extraConfigLua = ''
      local cmd = os.getenv("ROC_LANGUAGE_SERVER_PATH")
      require'lspconfig'.roc_ls.setup({
        cmd = { cmd },
        filetypes = { 'roc' },
        root_dir = require('lspconfig.util').find_git_ancestor,
      })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
        pattern = { "*.roc" },
        command = "set filetype=roc",
      })
    '';
  };
}
