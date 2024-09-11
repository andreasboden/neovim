{

  plugins.lazygit = {
    enable = true;
  };


  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>g";
      desc = "Git";
    }
    {
      __unkeyed-1 = "<leader>gg";
      __unkeyed-2 = "<cmd>LazyGit<CR>";
      desc = "UI";
    }
  ];
}
