let
  header = [
    "                                                                     "
    "       ████ ██████           █████      ██                     "
    "      ███████████             █████                             "
    "      █████████ ███████████████████ ███   ███████████   "
    "     █████████  ███    █████████████ █████ ██████████████   "
    "    █████████ ██████████ █████████ █████ █████ ████ █████   "
    "  ███████████ ███    ███ █████████ █████ █████ ████ █████  "
    " ██████  █████████████████████ ████ █████ █████ ████ ██████ "
    "                                                                       "
  ];
  header_bloody = [
    " ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓"
    " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒"
    "▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░"
    "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ "
    "▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒"
    "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░"
    "░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░"
    "   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   "
    "         ░    ░  ░    ░ ░        ░   ░         ░   "
    "                                ░                  "
  ];
  button_opts = {
    cursor = 3;
    width = 50;
    align_shortcut = "right";
    hl_shortcut = "Keyword";
    position = "center";
  };
  padding = val: {
    type = "padding";
    inherit val;
  };
in
{

  plugins.alpha = {
    enable = true;
    layout = [
      (padding 2)
      {
        type = "text";
        val = header_bloody;
        opts = {
          hl = "AlphaHeader";
          position = "center";
        };
      }
      (padding 2)
      {
        type = "button";
        val = "  Find File";
        on_press.__raw = "require('telescope.builtin').find_files";
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "f"
            ":Telescope find_files <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "f";
        } // button_opts;
      }
      (padding 1)
      {
        type = "button";
        val = "  New file";
        on_press.__raw = "function() vim.cmd[[ene]] end";
        opts = {
          shortcut = "n";
          keymap = [
            "n"
            "n"
            ":ene <BAR> startinsert <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
        } // button_opts;
      }
      (padding 1)
      {
        type = "button";
        val = "󰈚  Recent Files";
        on_press.__raw = "require('telescope.builtin').oldfiles";
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "r"
            ":Telescope oldfiles <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "r";
        } // button_opts;
      }
      (padding 1)
      {
        type = "button";
        val = "  Quit Neovim";
        on_press.__raw = "function() vim.cmd[[qa]] end";
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "q"
            ":qa<CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "q";

        } // button_opts;
      }
    ];
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>a";
      __unkeyed-2 = "<cmd>Alpha<CR>";
      desc = "Open alpha";
    }
  ];
}
