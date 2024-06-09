{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymapsSilent = true;
    keymaps = {
      addFile = "<leader>ha";
      toggleQuickMenu = "<C-e>";
      navFile = {
        "1" = "1";
        "2" = "2";
        "3" = "3";
        "4" = "4";
      };
    };
  };

  plugins.which-key.registrations = {
    "<leader>ha" = "Harpoon add file";
    "<C-e>" = "Harpoon menu";
    "1" = "Harpoon 1";
    "2" = "Harpoon 2";
    "3" = "Harpoon 3";
    "4" = "Harpoon 4";
  };

}
