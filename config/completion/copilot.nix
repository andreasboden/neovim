{ lib, pkgs, ... }: {
  plugins.copilot-lua = {
    enable = true;
    settings = {
      suggestion = {
        enabled = false;
      };
      panel = {
        enabled = false;
      };
      filetypes = {
        "." = false;
      };
      copilot_node_command = lib.getExe pkgs.nodejs;
      copilot_model = "gpt-41-copilot";
      server = {
        type = "binary";
        custom_server_filepath = lib.getExe pkgs.copilot-language-server;
      };
    };
  };
}
