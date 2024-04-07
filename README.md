**Deprecated** - This plugin has been merged into
[none-ls.nvim](https://github.com/nvimtools/none-ls.nvim). Another alternative is
[nvim-lint](https://github.com/mfussenegger/nvim-lint).

Provides a [bean-check](https://github.com/beancount/beancount) diagnostic source for
[null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim). This source will lint your
beancount files every time you save them.

## Dependencies

* [vim-beancount](https://github.com/nathangrigg/vim-beancount) for filetype detection

## Setup

```lua
require('null-ls').register(require('null-ls-bean-check'))
```
