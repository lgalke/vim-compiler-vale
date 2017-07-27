# Vim compiler for Vale

This plugin adds seamless integration of vale into vim.
The native `:make` command can be used to invoke [vale](https://github.com/ValeLint/vale), after setting `:compiler vale`.
Vale's output is properly parsed and displayed in vim's built-in quickfix format.

## Depencies

Well, yeah: vim itself and vale, obviously.

## Usage

1. The native `:compiler vale` will activate the vale prose linter. Subsequent
   invokations of `:make` will run the `vale` on the current file and display
   its output in the quickfix window.
2. Hence, the commands `:cnext` and `:cprevious` allow to navigate through the errors.

## Example quickfix list

```
paper.tex|207 col 205| vale.ComplexWords:Consider using 'has' instead of 'contains'
paper.tex|228 col 128| vale.Editorializing:Consider removing 'various'
paper.tex|236 col 189| vale.ComplexWords:Consider using 'idea' instead of 'concept'
```
