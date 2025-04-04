{ lib, pkgs, ... }: {
  plugins.copilot-lua = {
    enable = true;
    settings = {
      suggestion = {
        enabled = false;
        autoTrigger = true;
        debounce = 75;
        keymap = {
          accept = "<M-l>";
          acceptWord = false;
          acceptLine = false;
          next = "<M-]>";
          prev = "<M-[>";
          dismiss = "<C-]>";
        };
      };
      panel = {
        enabled = false;
        autoRefresh = true;
        keymap = {
          jumpPrev = "[[";
          jumpNext = "]]";
          accept = "<CR>";
          refresh = "gr";
          open = "<M-CR>";
        };
        layout = {
          position = "bottom"; # | top | left | right
          ratio = 0.4;
        };
      };
      filetypes = {
        "." = false;
      };
      copilot_node_command = lib.getExe pkgs.nodejs;
      serverOptsOverrides = { };
      server = {
        custom_server_filepath = lib.getExe pkgs.copilot-language-server;
      };
    };
  };
}
