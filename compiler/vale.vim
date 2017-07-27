" Vim Compiler File
" Compiler:	vale
" Maintainer:	Lukas Galke <vim@lpag.de>
" Last Change:	Mi, 26 Jul 2017 22:50:07 CEST

if exists("current_compiler")
    finish
endif
let current_compiler = "vale"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=vale\ --output\ line\ %
CompilerSet errorformat=%f:%l:%c:%m

let &cpo = s:cpo_save
unlet s:cpo_save
