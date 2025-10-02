{
  languages = {
    enableTreesitter = true;

    lua.enable = true;
    ts.enable = true;

    nix = {
      enable = true;
      format = {
        enable = true;
      };
    };

    wgsl = {
      enable = true;
      lsp.enable = true;
    };

    python = {
      enable = true;
      lsp.enable = true;
      format.enable = true;
      treesitter.enable = true;
    };

    clang = {
      enable = true;
      lsp.enable = true;
      treesitter.enable = true;
      cHeader = true;
    };

    rust = {
      enable = true;
      crates.enable = true;
      lsp.enable = true;
      lsp.opts = ''
        ["rust-analyzer"] = {
            cargo = {allFeature = true},
            checkOnSave = true,
            procMacro = {
                enable = true,
            },
        },
      '';
    };
  };
}
