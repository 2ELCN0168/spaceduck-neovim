-- vim.api.nvim_create_autocmd("BufRead", {
--   pattern = { "*.yaml", "*.yml" },
--   callback = function()
--     if vim.fn.search("hosts:\\|tasks:", "nw") ~= 0 then
--       vim.bo.filetype = "yaml.ansible"
--     end
--   end,
-- })

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
