{
  plugins.indent-blankline =
    {
      enable = true;
      settings.exclude = {
        filetypes = [
          ""
          "checkhealth"
          "help"
          "lspinfo"
          "packer"
          "TelescopePrompt"
          "TelescopeResults"
          "yaml"
        ];
        buftypes = [
          "terminal"
          "nofile"
          "quickfix"
        ];
      };

    };
}
