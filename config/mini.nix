{
  plugins.mini = {
    enable = true;
    modules = {
      comment = {
        mappings = {
          comment = "gc";
          comment_line = "gcc";
          textObject = "gc";
        };
      };
      indentscope = {
        enable = true;
      };
      notify = {
        enable = true;
      };
      jump = {
        enable = true;
      };
      pairs = {
        enable = true;
      };
      tabline = {
        enable = true;
      };
      starter = {
        enable = true;
      };
      bracketed = {
        enable = true;
        mappings = {
          buffer = { suffix = "b"; };
          comment = { suffix = "c"; };
          conflict = { suffix = "x"; };
          diagnostic = { suffix = "d"; };
          file = { suffix = "f"; };
          indent = { suffix = "i"; };
          jump = { suffix = "j"; };
          location = { suffix = "l"; };
          oldfile = { suffix = "o"; };
          quickfix = { suffix = "q"; };
          treesitter = { suffix = "t"; };
          undo = { suffix = "u"; };
          window = { suffix = "w"; };
          yank = { suffix = "y"; };
        };
      };
      sessions = {
        enable = true;
        autoread = true;
        autowrite = true;
      };

      pick = {
        enable = true;

        options = {
          content_from_bottom = true;
        };
      };

      bufremove = {
        enable = true;
      };


      files = {
        enable = true;
        content = {
          filter.__raw = ''
            function(entry)
              return entry.name ~= '.DS_Store' and entry.name ~= '.git' and entry.name ~= '.direnv' and entry.name ~= '.devenv' and entry.name ~= '.cache'
            end
          '';
          sort.__raw = ''
            function(entries)
              -- technically can filter entries here too, and checking gitignore for _every entry individually_
              -- like I would have to in `content.filter` above is too slow. Here we can give it _all_ the entries
              -- at once, which is much more performant.
              local all_paths = table.concat(
                vim.tbl_map(function(entry)
                  return entry.path
                end, entries),
                '\n'
              )
              local output_lines = {}
              local job_id = vim.fn.jobstart({ 'git', 'check-ignore', '--stdin' }, {
                stdout_buffered = true,
                on_stdout = function(_, data)
                  output_lines = data
                end,
              })

              -- command failed to run
              if job_id < 1 then
                return entries
              end

              -- send paths via STDIN
              vim.fn.chansend(job_id, all_paths)
              vim.fn.chanclose(job_id, 'stdin')
              vim.fn.jobwait({ job_id })
              return require('mini.files').default_sort(vim.tbl_filter(function(entry)
                return not vim.tbl_contains(output_lines, entry.path)
              end, entries))
            end
          '';

        };
        windows = {
          preview = true;
          width_nofocus = 25;
          width_preview = 50;
        };
        mappings = {
          close = "q";
          go_in = "l";
          go_in_plus = "<CR>";
          go_out = "h";
          go_out_plus = "H";
          mark_goto = "\"";
          mark_set = "m";
          reset = "<BS>";
          reveal_cwd = "@";
          show_help = "g?";
          synchronize = "=";
          trim_left = "<";
          trim_right = ">";
        };
      };
    };
  };


  plugins.which-key.settings.spec = [
    {
      __unkeyed-1 = "<leader><leader>";
      __unkeyed-2.__raw = ''
        function()
          local MiniFiles = require("mini.files")
          local _ = MiniFiles.close()
            or MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
          vim.defer_fn(function()
            MiniFiles.reveal_cwd()
          end, 30)
        end
      '';
      desc = "Explorer";
    }
    {
      __unkeyed-1 = "<leader>f";
      __unkeyed-2 = "<cmd>Pick files tool='git'<CR>";
      desc = "Find files";
    }
    {
      __unkeyed-1 = "<leader>F";
      __unkeyed-2 = "<cmd>Pick grep_live tool='git'<CR>";
      desc = "Find in files";
    }
  ];
}
