{ lib, ... }: {
  # Import all your configuration modules here
  imports = [
    ./modules
    ./colorscheme.nix
    ./keymaps.nix
    ./commentstring.nix
    # ./bufferline.nix
    # ./alpha.nix
    ./which-key.nix
    # ./oil.nix
    ./mini.nix
    ./telescope.nix
    ./treesitter.nix
    ./lualine.nix
    ./lsp.nix
    ./harpoon.nix
    ./completion/cmp.nix
    ./completion/copilot.nix
    ./completion/lspkind.nix
    ./git.nix
    ./surround.nix
  ];

  config = {

    vimAlias = true;

    plugins.web-devicons = {
      enable = true;
    };

    opts = {
      backup = false;
      clipboard = "unnamedplus";
      fileencoding = "utf-8";
      hlsearch = true;
      ignorecase = true;
      conceallevel = 0;
      mouse = "a";
      showtabline = 2;
      smartcase = true;
      smartindent = true;
      splitbelow = true;
      splitright = true;
      swapfile = false;
      timeoutlen = 300;
      updatetime = 300;
      undofile = true;
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      writebackup = false;
      number = true;
      relativenumber = true;
      numberwidth = 4;
      cursorline = true;
      signcolumn = "yes";
      wrap = false;
      linebreak = false;
      scrolloff = 8;
      sidescrolloff = 8;
    };

    autoCmd = [
      {
        event = "TextYankPost";
        pattern = "*";
        command = "silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})";
      }
    ];
  };
}
