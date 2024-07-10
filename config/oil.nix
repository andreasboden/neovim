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

  plugins.which-key.registrations = {
    "<leader>e" = [ [ "<cmd>Oil<CR>" "Explorer" ] ];
  };

}
