# Vim compiler for Vale

This plugin adds seamless integration of vale into vim.
The native `:make` command can be used to invoke [vale](https://github.com/ValeLint/vale), after setting `:compiler vale`.
Vale's output is properly parsed and displayed in vim's built-in quickfix format.

## Usage

1. The native `:compiler vale` will activate the vale prose linter. Subsequent
   invokations of `:make` will run the `vale` on the current file and display
   its output in the quickfix window.
2. When using Tim Pope's [vim-dispatch](https://github.com/tpope/vim-dispatch),
   one can set the buffer variable `b:dispatch = "vale --output line %"` in
   respective filetypes. The present compiler plugin will then be chosen
   automatically on `:Dispatch`.

## Example output

```vim
paper.tex|207 col 205| vale.ComplexWords:Consider using 'has' instead of 'contains'
paper.tex|228 col 128| vale.Editorializing:Consider removing 'various'
paper.tex|236 col 189| vale.ComplexWords:Consider using 'idea' instead of 'concept'
```
