" Disable vi-compatibility to ensure vim settings are used.
set nocompatible

" Show line numbers.
set number

" Show the line number and column number of the cursor.
set ruler

" Enable syntax highlighting.
syntax on

" Enable moving the cursor with the mouse.
set mouse=a

" Enable intelligent auto-indenting based on filetype.
filetype plugin indent on
set autoindent

" Set tabs to be four sapces and always get inserted.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

" Allow backspacing in insert mode to delete inserts, line breaks and go past where indent mode started.
set backspace=indent,eol,start

" Disable automatic line wrapping.
set textwidth=0

" Enable incremental searching and highlighting of found search terms.
set incsearch
set hlsearch

" Keep a history of commands entered.
set history=256

" Set command line autocomplete to show a list of all possible commands. The list is also navigable using the movement keys.
set wildmenu
set wildmode=list:longest,full

" Show partial command line information at the bottom of the screen.
set showcmd

" Enabled backups and set the backup and swap file directories so the swap and/or backup file is not created in the same directory as the open file.
set backup
set backupdir=~/.vim/backup,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/backup,~/.tmp,~/tmp,/var/tmp,/tmp

" Always show the status bar.
set laststatus=2

" Customize the contents of the status line
set statusline=%f		" Path of the current file.
set statusline+=%y		" Type of the current file.
set statusline+=%r		" Displays [RO] if the current file is readonly.
set statusline+=%m		" Displays [+] if the file has been modified.
set statusline+=%=
set statusline+=%c,		" Column number of the cursor.
set statusline+=%l/%L	" Cursor line/total lines.

" Set the color scheme to Molokai.
color molokai

" Bind opening ctrlp to ctrl+shift+o so it is similar to the binding for Xcode.
let g:ctrlp_map = '<c-S-o>'

" Turn on pathogen.vim
execute pathogen#infect()
