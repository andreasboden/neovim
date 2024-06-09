{

  globals.mapleader = " ";
  globals.maplocalleader = " ";


  keymaps = [
    # Disable space key
    {
      mode = "";
      key = "<Space>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable space key";
      };
    }
    # Disable arrow keys
    {
      mode = [ "n" "i" ];
      key = "<Up>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Up arrow key";
      };
    }
    {
      mode = [ "n" "i" ];
      key = "<Down>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Down arrow key";
      };
    }
    {
      mode = [ "n" "i" ];
      key = "<Right>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Right arrow key";
      };
    }
    {
      mode = [ "n" "i" ];
      key = "<Left>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Left arrow key";
      };
    }

    # Better windows
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the left window";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the bottom window";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the top window";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        silent = true;
        noremap = true;
        desc = "Move to the right window";
      };
    }

    # Press jk fast to exit insert mode
    {
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = {
        silent = true;
        noremap = true;
        desc = "Exit insert mode";
      };
    }
    {
      mode = "i";
      key = "kj";
      action = "<Esc>";
      options = {
        silent = true;
        noremap = true;
        desc = "Exit insert mode";
      };
    }

    # CTRL+S saving
    {
      mode = "n";
      key = "<C-s>";
      action = ":w<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Save the file";
      };
    }
    {
      mode = "i";
      key = "<C-s>";
      action = "<Esc>:w<CR>";
      options = {
        silent = true;
        noremap = true;
        desc = "Save the file";
      };
    }

    # Visual
    # Stay in indent mode
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Indent left";
      };
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Indent right";
      };
    }

    # Visual block
    # Move lines
    {
      mode = "x";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Move selected lines down";
      };
    }
    {
      mode = "x";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options = {
        silent = true;
        noremap = true;
        desc = "Move selected lines up";
      };
    }
  ];


  plugins.which-key.registrations = {
    "<leader>c" = [ [ "<cmd>Bdelete!<CR>" "Close buffer" { mode = ""; } ] ];
    "<leader>C" = [ [ "<cmd>%bd|e#<CR>" "Close all buffers" { mode = ""; } ] ];
  };

}
