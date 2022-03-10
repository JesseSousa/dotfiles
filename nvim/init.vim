lua require ('plugins')

" leader key
let mapleader = ","

set ignorecase
set number
set cursorline
set tabstop=2
set softtabstop=2
set expandtab
set mouse=a
set clipboard+=unnamedplus

" tab for autoindents
set autoindent
set shiftwidth=2

call plug#begin('~/.config/nvim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-ruby/vim-ruby'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'dense-analysis/ale'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mattn/emmet-vim'
  Plug 'preservim/nerdcommenter'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

" nvim-tree.lua Config
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" Airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1

" ALE config
" TODO: set code fixer for ruby
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint', 'prettier'],
\  'vue': ['eslint', 'prettier'],
\  'ruby': ['prettier', 'remove_trailing_lines', 'trim_whitespace']
\}
let g:ale_fix_on_save = 1

" theme
set termguicolors
colorscheme catppuccin

" keymap
noremap <Leader>n :bn<CR>
noremap <Leader>N :bp<CR>
noremap <Leader>q :bd<CR>
noremap <Leader>T :tabnew<CR>
noremap <Leader>h :wincmd h<CR>
noremap <Leader>l :wincmd l<CR>
noremap <Leader>j :wincmd j<CR>
noremap <Leader>k :wincmd k<CR>
noremap <Leader>C :ed ~/.config/nvim/init.vim<CR>
noremap <Leader>i3 :ed ~/.config/i3/config<CR>
noremap <Leader>s :source ~/.config/nvim/init.vim<CR>
noremap <Leader>plug :PlugInstall<CR>
noremap <Leader>packer :PackerInstall<CR>
noremap <Leader>rb :! ruby ./%<CR>
noremap <F3> :set hlsearch!<CR>
