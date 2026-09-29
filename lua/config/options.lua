
-- remove header / banner from netrw
vim.g.netrw_banner = 0

vim.lsp.enable("roslyn_ls")

-- LSP keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<S-F12>", vim.lsp.buf.references, opts)
  end,
})
