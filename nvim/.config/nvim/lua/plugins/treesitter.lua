require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "typescript", "lua", "tsx", "javascript", "python", "rust", "cpp", "css", "html", "bash", "sql"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
