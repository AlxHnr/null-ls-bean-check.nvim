Provides a [bean-check](https://github.com/beancount/beancount) diagnostic source for
[null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim). This source will lint your
beancount files every time you save them.

## Dependencies

* [vim-beancount](https://github.com/nathangrigg/vim-beancount) for filetype detection

## Setup

```lua
require('null-ls').register(require('null-ls-bean-check'))
```
