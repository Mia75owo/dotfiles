-- _______ _______  ______ ______  _______  ______
--    |    |_____| |  ____ |_____] |_____| |_____/
--    |    |     | |_____| |_____] |     | |    \_

vim.cmd([[
  let g:tagbar_type_typescript = {
    \ 'ctagstype': 'typescript',
    \ 'kinds': [
      \ 'c:classes',
      \ 'n:modules',
      \ 'f:functions',
      \ 'v:variables',
      \ 'v:varlambdas',
      \ 'm:members',
      \ 'i:interfaces',
      \ 'e:enums',
    \ ]
  \ }
]])
