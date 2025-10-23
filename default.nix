{lib, ...}: {
  programs.nvf = {
    enable = true;
    settings = {
      vim = lib.mkMerge [
        (import ./keymap.nix)
        (import ./lsp.nix)
        (import ./options.nix)
        (import ./utility.nix)
        (import ./languages.nix)
        {
          #extraPlugins = with pkgs.vimPlugins; {
          #  bufferline = {
          #    package = bufferline-nvim;
          #  };
          #};

          vim.luaConfigRC.lua-config = ''
            -- Загружаем наш тестовый модуль из ~/.config/nvf
            require("lua-config")
          '';
          viAlias = false;
          vimAlias = true;

          #filetree.neo-tree.enable = true;
          theme = {
            enable = true;
            name = "catppuccin";
            style = "mocha";
            transparent = false;
          };

          diagnostics = {
            enable = true;
            nvim-lint.enable = true;
            config.virtual_text = true;
          };

          statusline.lualine = {
            enable = true;
            theme = "catppuccin";
          };

          ui = {
            modes-nvim.setupOpts.line_opacity.visual = 0.5;
            noice.enable = true;
          };

          telescope.enable = true;
          autocomplete.nvim-cmp.enable = true;
          mini.pairs.enable = true;
          tabline.nvimBufferline.enable = true;
          terminal.toggleterm.enable = true;
          visuals.nvim-scrollbar.enable = true;
        }
      ];
    };
  };
}
