# Vim compiler for Vale

This plugin adds seamless integration of vale into vim.
The native `:make` command can be used to invoke [vale](https://github.com/ValeLint/vale), after setting `:compiler vale`.
Vale's output is properly parsed and displayed in vim's built-in quickfix format.

## Dependencies

Well, yeah.. vim itself and [vale](https://github.com/ValeLint/vale).

## Installation

You can either copy `vale.vim` into `.vim/compiler` manually, or install the plugin with some package manager, e.g. [vim-plug](https://github.com/junegunn/vim-plug). 

## Usage

1. The native `:compiler vale` will activate the vale prose linter. Subsequent
   invokations of `:make` will run the `vale` on the current file and display
   its output in the quickfix window.
2. Hence, the usual quickfix commands `:copen`, `:cnext` and `:cprevious` enable navigation through the errors.

## Example quickfix list

```
paper.tex|207 col 205| vale.ComplexWords:Consider using 'has' instead of 'contains'
paper.tex|228 col 128| vale.Editorializing:Consider removing 'various'
paper.tex|236 col 189| vale.ComplexWords:Consider using 'idea' instead of 'concept'
```
