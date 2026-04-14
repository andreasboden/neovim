{
  plugins.ts-context-commentstring = {
    enable = true;
    settings = {
      enable_autocmd = false;
      languages = {
        javascript = {
          __default = "// %s";
          jsx_element = "{/* %s */}";
          jsx_fragment = "{/* %s */}";
          jsx_attribute = "// %s";
          comment = "// %s";
        };
        typescript = {
          __default = "// %s";
          jsx_element = "{/* %s */}";
          jsx_fragment = "{/* %s */}";
          jsx_attribute = "// %s";
          comment = "// %s";
        };
      };
    };
  };

  extraConfigLua = ''
    local get_option = vim.filetype.get_option
    vim.filetype.get_option = function(filetype, option)
      if option ~= "commentstring" then
        return get_option(filetype, option)
      end
      local ok, cs = pcall(require("ts_context_commentstring.internal").calculate_commentstring)
      return (ok and cs) or get_option(filetype, option)
    end
  '';
}
