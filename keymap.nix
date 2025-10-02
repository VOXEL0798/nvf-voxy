{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  keymaps = [
    {
        key = "<C-U>";
        mode = [
            "n"
        ];
        action = "<esc>redo<cr>";
    }
    #Save on Ctrl+S
    {
        key = "<C-s>";
        mode = [
            "n"
            "i"
        ];
        action = "<esc><cmd>w<cr>";
    }

    #go-to definition/declaratine/references
    {
        key = "gr";
        mode = [ "n" ];
        action = "<cmd>Telescope lsp_references<cr>";
    }

    {
        key = "gD";
        mode = [ "n" ];
        action = "<cmd>lua vim.lsp.buf.declaration()<cr>";
    }

    {
        key = "<leader>r";
        mode = [ "n" ];
        action = "<cmd>lua vim.ui.input({prompt=\"New name\"}, function(input) vim.lsp.buf.rename(input) end) <cr>";
    }

    {
        key = "gd";
        mode = [ "n" ];
        action = "<cmd>Telescope lsp_definitions<cr>";
    }

    #Moving lines
    {
        key = "<A-j>";
        mode = [ "n" ];
        action = "<cmd>m +1<cr>";
    }

    {
        key = "<A-k>";
        mode = [ "n" ];
        action = "<cmd>m -2<cr>";
    }

    #Explorer open/close
    {
        key = "<leader>e";
        mode = [ "n" ];
        action = "<cmd>lua Snacks.explorer()<cr>";
    }

    #ToggleTerm open/close
    {
        key = "<C-/>";
        mode = [
            "n"
            "t"
        ];
        action = "<cmd>ToggleTerm direction=float<cr>";
    }

    #Split screen
    {
        key = "<leader>sv";
        mode = [ "n" ];
        action = "<cmd>vertical split<cr>";
    }

    {
        key = "<leader>sh";
        mode = [ "n" ];
        action = "<cmd>horizontal split<cr>";
    }

    #Moving to tabs
    {
        key = "<S-h>";
        mode = [ "n" ];
        action = "<cmd>BufferLineCyclePrev<cr>";
    }

    { 
        key = "<S-l>";
        mode = [ "n" ];
        action = "<cmd>BufferLineCycleNext<cr>";
    }

    #Tab close
    {
        key = "<leader>gd";
        mode = [ "n" ];
        action = "<cmd>tabclose<cr>";
    }

    #Moving to spaces
    {
        key = "<C-h>";
        mode = [ "n" ];
        action = "<C-w>h";
    }

    {
        key = "<C-j>";
        mode = [ "n" ];
        action = "<C-w>j";
    }

    {
        key = "<C-k>";
        mode = [ "n" ];
        action = "<C-w>k";
    }

    {
        key = "<C-l>";
        mode = [ "n" ];
        action = "<C-w>l";
    }
  ];
}
