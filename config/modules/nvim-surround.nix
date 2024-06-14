{ pkgs, config, lib, ... }:
let cfg = config.plugins.nvim-surround;
in
{
  options.plugins.nvim-surround = {
    enable = lib.mkEnableOption "nvim-surround";
  };

  config = lib.mkIf cfg.enable {
    extraPlugins = with pkgs.vimPlugins; [ nvim-surround ];
    extraConfigLua = ''
      require("nvim-surround").setup()
    '';
  };
}
