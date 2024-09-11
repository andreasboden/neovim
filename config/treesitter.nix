{ pkgs, config, ... }: {
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    grammarPackages = config.plugins.treesitter.package.passthru.allGrammars ++ [
      config.plugins.treesitter.package.builtGrammars.roc
    ];
  };
}
