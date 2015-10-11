" Vim syntax file
" Language: Pliant Programming Language
" Maintainer: Olga Mirensky
" Latest Revision: 30 December 2014

if exists("b:current_syntax")
  finish
endif

syn keyword pliTodo contained TODO FIXME NOTE
syn match pliComment "#.*$" contains=pliTodo


"syn region pliString start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region pliString start=/"/  end=/"/

syn keyword pliFlowCtrl if while for else eif in not
syn keyword pliTypes Str Float CBool Bool Int Int32 Int16 Int8
syn keyword pliTypes Stream DateTime Arrow Link Pointer Function
syn keyword pliConstant null true false
syn keyword pliGotoLabels part leave
syn keyword pliOtherKeywords close open gvar gvar constant field type
syn keyword pliOtherKeywords method ui_function function export maybe entry_type 
syn keyword pliOtherKeywords addressof first shunt return void


let b:current_syntax = "pliant"

hi def link pliTodo        Todo
hi def link pliComment     Comment
hi def link pliString      Constant
hi def link pliFlowCtrl    Conditional
hi def link pliTypes       Type
hi def link pliOtherKeywords Keyword
hi def link pliGotoLabels  Label
hi def link pliConstant    Constant
