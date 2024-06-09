{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<C-e>";
      navFile = {
        "1" = "<leader>1";
        "2" = "<leader>2";
        "3" = "<leader>3";
        "4" = "<leader>4";
      };
    };
  };

  plugins.which-key.registrations = {
    "<leader>ha" = "Harpoon add file";
    "<C-e>" = "Harpoon menu";
    "<leader>1" = "Harpoon 1";
    "<leader>2" = "Harpoon 2";
    "<leader>3" = "Harpoon 3";
    "<leader>4" = "Harpoon 4";
  };

}
