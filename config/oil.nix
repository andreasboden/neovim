{
  plugins.oil = {
    enable = true;
    settings = {
      view_options.show_hidden = true;
      view_options.natural_order = true;
      view_options.is_always_hidden = ''
        function (name, _)
          return name == '..' or name == '.git'
        end
      '';
      defaultFileExplorer = true;

    };
  };


  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>e";
      __unkeyed-2 = "<cmd>Oil<CR>";
      desc = "Explorer";
    }
  ];

}
