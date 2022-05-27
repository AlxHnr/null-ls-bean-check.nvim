local helpers = require('null-ls.helpers')
return {
  name = 'bean-check',
  meta = {
    url = 'https://github.com/beancount/beancount',
    description = 'Beancount: text-based double-entry accounting tool',
  },
  method = require('null-ls.methods').internal.DIAGNOSTICS_ON_SAVE,
  filetypes = { 'beancount' },
  generator = helpers.generator_factory{
    command = 'bean-check',
    args = { '$FILENAME' },
    from_stderr = true,
    to_stdin = true,
    format = 'line',
    check_exit_code = function(exit_code) return exit_code == 0 end,
    on_output = helpers.diagnostics.from_patterns{{
      pattern = [[(.+):(%d+):%s*(.+)]],
      groups = { 'filename', 'row', 'message' },
    }},
  },
}
