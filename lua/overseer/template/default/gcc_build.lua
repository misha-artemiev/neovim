return {
  name = "gcc build",
  builder = function()
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "gcc" },
      args = { file },
    }
  end,
  condition = {
    filetype = { "c" },
  },
}
