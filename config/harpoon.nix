{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<leader>hm";
      navFile = {
        "1" = "1";
        "2" = "2";
        "3" = "3";
        "4" = "4";
      };
    };
  };


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
      __unkeyed-1 = "1";
      desc = "Harpoon 1";
    }
    {
      __unkeyed-1 = "2";
      desc = "Harpoon 2";
    }
    {
      __unkeyed-1 = "3";
      desc = "Harpoon 3";
    }
    {
      __unkeyed-1 = "4";
      desc = "Harpoon 4";
    }
  ];


}
