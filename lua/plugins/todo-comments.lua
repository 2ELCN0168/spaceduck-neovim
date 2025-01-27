return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    keywords = {
      FIX = {
        icon = ' ',
        color = 'error',
        alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' },
      },
      TODO = { icon = ' ', color = 'info' },
      HACK = { icon = ' ', color = 'warning' },
      WARN = { icon = ' ', color = 'warning', alt = { 'WARNING', 'XXX' } },
      PERF = { icon = ' ', alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' } },
      NOTE = { icon = ' ', color = 'hint', alt = { 'INFO' } },
      TEST = { icon = '⏲ ', color = 'test', alt = { 'TESTING', 'PASSED', 'FAILED' } },
      COMMAND = {
        icon = ' ',
        color = 'info',
        alt = {
          'CODE',
          'SNIPPET',
          'SCRIPT',
          'ALGORITHM',
          'ALGO',
          'REGEX',
          'AWK',
          'SED',
        },
      },

      COLOR = {
        icon = ' ',
        color = 'default',
        alt = {
          'COLOUR',
          'HEX',
          'RGB',
          'RVB',
          'RGBA',
          'RVBA',
          'HSL',
          'TSL',
          'TONE',
        },
      },
    },
  },
}
