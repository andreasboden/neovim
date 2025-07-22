{ ... }: {

  plugins.trouble = {
    enable = true;
    settings = {
      focus = true;
      modes = {
        diagnostics = {
          auto_open = false;
          auto_close = true;
        };
      };
    };
    # keys = {
    #   toggle = "<leader>lt";
    #   previous = "<leader>lk";
    #   next = "<leader>lj";
    # };
  };

  plugins.parinfer-rust.enable = true;
  plugins.conjure.enable = true;

  plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "<leader>k" = "goto_prev";
        "<leader>j" = "goto_next";
      };
      lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };

    servers = {
      denols = {
        enable = true;
        rootDir = "require 'lspconfig.util'.root_pattern('deno.json', 'deno.jsonc')";
      };
      pylsp = {
        enable = true;
        settings = {
          plugins = {
            black.enable = true;
          };
        };
      };
      elixirls = {
        enable = true;
      };
      zls = {
        enable = true;
      };
      bashls = {
        enable = true;
      };
      ts_ls = {
        enable = true;
        rootDir = "require 'lspconfig.util'.root_pattern('tsconfig.json', 'jsconfig.json', 'package.json')";
        extraOptions = {
          single_file_support = false;
        };
        settings = {
          typescript.format.enable = false;
          javascript.format.enable = false;
        };
      };
      tailwindcss = { enable = true; };
      jsonls = { enable = true; };
      html = { enable = true; };
      # graphql = { enable = true; };
      rust_analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
      };
      nil_ls = {
        enable = true;
        extraOptions = {
          settings.nil.formatting.command = [ "nixpkgs-fmt" ];
        };
      };
      gleam = { enable = true; };
      gopls = { enable = true; };
      svelte = { enable = true; };
    };
  };


  plugins.lsp-format = {
    enable = true;
    lspServersToEnable = [ "nil_ls" "gopls" "gleam" "rust_analyzer" ];
  };

  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources.formatting.mix = {
      enable = true;
    };
    sources.formatting.prettier = {
      enable = true;
      disableTsServerFormatter = true;
    };
  };

  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader>l";
      desc = "LSP";
    }
    {
      __unkeyed-1 = "<leader>la";
      __unkeyed-2 = "<cmd>lua vim.lsp.buf.code_action()<cr>";
      desc = "Code action";
    }
    {
      __unkeyed-1 = "<leader>ll";
      __unkeyed-2 = "<cmd>lua vim.lsp.codelens.run()<cr>";
      desc = "Codelens";
    }
    {
      __unkeyed-1 = "<leader>lf";
      __unkeyed-2 = "<cmd>lua vim.lsp.buf.format()<cr>";
      desc = "Format";
    }
    {
      __unkeyed-1 = "<leader>ld";
      __unkeyed-2 = "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>";
      desc = "Document diagnostics";
    }
    {
      __unkeyed-1 = "<leader>lw";
      __unkeyed-2 = "<cmd>Trouble diagnostics toggle focus=true<cr>";
      desc = "Workspace diagnostics";
    }
    {
      __unkeyed-1 = "<leader>lj";
      __unkeyed-2 = "<cmd>Trouble diagnostics next<cr>";
      desc = "Next diagnostic";
    }
    {
      __unkeyed-1 = "<leader>lk";
      __unkeyed-2 = "<cmd>Trouble diagnostics prev<cr>";
      desc = "Prev diagnostic";
    }
    {
      __unkeyed-1 = "<leader>lr";
      __unkeyed-2 = "<cmd>lua vim.lsp.buf.rename()<cr>";
      desc = "Rename";
    }
    {
      __unkeyed-1 = "<leader>lR";
      __unkeyed-2 = "<cmd>Trouble references toggle<cr>";
      desc = "References";
    }
  ];

  extraConfigLua = ''
    vim.diagnostic.config({ virtual_text = true; virtual_lines = true; })
  '';
}
