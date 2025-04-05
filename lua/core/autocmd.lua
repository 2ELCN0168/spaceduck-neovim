-- vim.api.nvim_create_autocmd("BufRead", {
--   pattern = { "*.yaml", "*.yml" },
--   callback = function()
--     if vim.fn.search("hosts:\\|tasks:", "nw") ~= 0 then
--       vim.bo.filetype = "yaml.ansible"
--     end
--   end,
-- })

-- ANSIBLE FT DETECTION
vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.yml", "*.yaml" },
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, math.min(500, vim.api.nvim_buf_line_count(0)), false)
    local content = table.concat(lines, "\n")
    if content:match("%- +name:") or content:match("ansible%.builtin%.") then
      vim.bo.filetype = "yaml.ansible"
    end
  end,
})

-- CORRECT UI BACKGROUND GAPS WITH COLORSCHEME
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then
      return
    end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("UILeave", {
  callback = function()
    io.write("\027]111\027\\")
  end,
})
