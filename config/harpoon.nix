{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
  };

  keymaps = [
    { mode = "n"; key = "<leader>ha"; action.__raw = "function() require'harpoon':list():add() end"; }
    { mode = "n"; key = "<leader>h"; action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end"; }
    { mode = "n"; key = "<leader>1"; action.__raw = "function() require'harpoon':list():select(1) end"; }
    { mode = "n"; key = "<leader>2"; action.__raw = "function() require'harpoon':list():select(2) end"; }
    { mode = "n"; key = "<leader>3"; action.__raw = "function() require'harpoon':list():select(3) end"; }
    { mode = "n"; key = "<leader>4"; action.__raw = "function() require'harpoon':list():select(4) end"; }
  ];


  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>h";
      desc = "Harpoon";
    }
    {
      __unkeyed-1 = "<leader>ha";
      desc = "Add file";
    }
    {
      __unkeyed-1 = "<leader>hm";
      desc = "Show menu";
    }
    {
      __unkeyed-1 = "<leader>1";
      desc = "Harpoon 1";
    }
    {
      __unkeyed-1 = "<leader>2";
      desc = "Harpoon 2";
    }
    {
      __unkeyed-1 = "<leader>3";
      desc = "Harpoon 3";
    }
    {
      __unkeyed-1 = "<leader>4";
      desc = "Harpoon 4";
    }
  ];
}
