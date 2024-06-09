{
  # Import all your configuration modules here
  imports = [
    ./colorscheme.nix
    ./keymaps.nix
    ./bufferline.nix
    ./alpha.nix
    ./which-key.nix
    ./oil.nix
    ./telescope.nix
    ./treesitter.nix
    ./lualine.nix
    ./lsp.nix
    ./harpoon.nix
  ];

  config = {
    vimAlias = true;

    options = {
      relativenumber = true;
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
