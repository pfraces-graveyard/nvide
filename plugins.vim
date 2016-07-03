" ---------
" unplugged
" ---------

" netrw
let g:netrw_dirhistmax = 0         " disable .netrwhist file creation
let g:netrw_liststyle = 0          " thin (change to 3 for tree)
let g:netrw_banner = 0             " no banner
let g:netrw_hide = 1               " enable file ignore patterns
let g:netrw_list_hide = '.*\.swp$' " file ignore patterns

" vim-plug
let g:plug_window = '' " show progress in current window

" -------
" helpers
" -------

Plug 'kassio/neoterm' " terminal enhacements
let g:neoterm_size = 10
let g:neoterm_automap_keys = "\<leader>tt"
let g:neoterm_autoinsert = 1
 
Plug 'Shougo/unite.vim' " fuzzy finder

if executable('ag')
  let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden -g ""'
endif

" git support

Plug 'tpope/vim-fugitive' 

Plug 'airblade/vim-gitgutter'
let g:gitgutter_map_keys = 0 " do not setup key mappings
let g:gitgutter_sign_column_always = 1 " always show gutter

" -----
" theme
" -----

Plug 'nanotech/jellybeans.vim' " color scheme

Plug 'bling/vim-airline' " status bar
let g:airline#extensions#tabline#enabled = 1 " enable top tabline
let g:airline#extensions#tabline#fnamemod = ':t' " show only filename in tabline

" hide separators
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_z = ''

" -----------
" development
" -----------

Plug 'editorconfig/editorconfig-vim' " editorconfig integration
Plug 'tpope/vim-commentary' " comment/uncomment code

Plug 'SirVer/ultisnips' " code snippets
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" ----------
" javascript
" ----------

" syntax highlight and indentation
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'gavocanov/vim-js-indent', { 'for': 'javascript' }

" linter
Plug 'neomake/neomake'
let g:neomake_javascript_enabled_makers = ['eslint']

" autocompletion
Plug 'Shougo/deoplete.nvim' | Plug 'carlitux/deoplete-ternjs'
let g:deoplete#enable_at_startup = 1
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent', '--no-port-file']
