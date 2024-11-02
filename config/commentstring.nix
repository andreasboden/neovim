{
  plugins.ts-context-commentstring = {
    enable = true;
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

  extraConfigLua = ''
    local get_option = vim.filetype.get_option
    vim.filetype.get_option = function(filetype, option)
      return option == "commentstring"
        and require("ts_context_commentstring.internal").calculate_commentstring()
        or get_option(filetype, option)
    end
  '';
}
