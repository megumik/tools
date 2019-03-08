"スワップファイルを作らない
set noswapfile

" 行番号
set number 
" シンタックスハイライト
syntax on

set smartindent
"行末の1文字先までカーソルが移動できる
set virtualedit=onemore
"tab, spaseを表示
set list
"どの文字でタブや改行を表示するか
set listchars=tab:>-,extends:<,trail:-
"テンプレ
autocmd BufNewFile *.py 0r $HOME/.vim/template/python.txt
autocmd BufNewFile *.sh 0r $HOME/.vim/template/bash.txt
autocmd BufNewFile *.c 0r $HOME/.vim/template/c.txt
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp.txt

"カラースキーム
colorscheme desert
"行番号の色
hi CursorLineNr ctermbg=white ctermfg=0
set cursorline
hi clear CursorLine
" *.mdもmorkdown
au BufRead,BufNewFile *.md set filetype=markdown

" http://d.hatena.ne.jp/over80/20090305/1236264851から
autocmd FileType python,cpp setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType python,cpp setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

if exists('&colorcolumn')
    set colorcolumn=+1
    autocmd FileType sh,vim,python,c setlocal textwidth=80
    hi ColorColumn ctermbg=darkcyan ctermfg=0
endif

" backspace急に使えんくなった
set backspace=indent,eol,start

" cでインデントスペース2つ
autocmd FileType c setl autoindent
autocmd FileType c setl tabstop=8 expandtab shiftwidth=2 softtabstop=2

" vimの:!でエイリアスを使う
let $BASH_ENV = "~/.bash_aliases"
