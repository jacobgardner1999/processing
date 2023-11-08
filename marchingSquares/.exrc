let s:cpo_save=&cpo
set cpo&vim
inoremap <nowait> <silent> <expr> <C-B> coc#float#has_scroll() ? "=coc#float#scroll(0)" : "<Left>"
inoremap <nowait> <silent> <expr> <C-F> coc#float#has_scroll() ? "=coc#float#scroll(1)" : "<Right>"
inoremap <silent> <expr> <C-A> coc#refresh()
inoremap <C-J> <Plug>(coc-snippets-expand-jump)
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <expr> <PageUp> coc#pum#visible() ? coc#pum#scroll(0) : "\<PageUp>"
inoremap <silent> <expr> <PageDown> coc#pum#visible() ? coc#pum#scroll(1) : "\<PageDown>"
inoremap <silent> <expr> <C-Y> coc#pum#visible() ? coc#pum#confirm() : "\u\\=coc#on_enter()\"
inoremap <silent> <expr> <C-E> coc#pum#visible() ? coc#pum#cancel() : "\"
inoremap <silent> <expr> <Up> coc#pum#visible() ? coc#pum#prev(0) : "\<Up>"
inoremap <silent> <expr> <Down> coc#pum#visible() ? coc#pum#next(0) : "\<Down>"
inoremap <silent> <expr> <C-P> coc#pum#visible() ? coc#pum#prev(1) : "\"
inoremap <silent> <expr> <C-N> coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "	" : coc#refresh()
inoremap <C-C> 
inoremap <C-W> u
inoremap <C-U> u
vnoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? coc#float#scroll(0) : ""
nnoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? coc#float#scroll(0) : ""
nnoremap  zz
vnoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? coc#float#scroll(1) : ""
nnoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? coc#float#scroll(1) : ""
vnoremap <silent>  :TmuxNavigateLeft
onoremap <silent>  :TmuxNavigateLeft
nnoremap <silent> 	 :lua if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then vim.cmd('write') end vim.cmd('bnext')
noremap <silent> <NL> :TmuxNavigateDown
noremap <silent>  :TmuxNavigateUp
noremap <silent>  :TmuxNavigateRight
xnoremap <silent>  <Plug>(coc-range-select)
nnoremap  zz
noremap <silent>  :TmuxNavigatePrevious
nnoremap <nowait> <silent>  p :CocListResume
nnoremap <nowait> <silent>  o :CocList outline
nnoremap <nowait> <silent>  c :CocList commands
nnoremap <nowait> <silent>  e :CocList extensions
nnoremap <nowait> <silent>  cl <Plug>(coc-codelens-action)
nnoremap <silent>  r <Plug>(coc-codeaction-refactor-selected)
xnoremap <silent>  r <Plug>(coc-codeaction-refactor-selected)
nnoremap <silent>  re <Plug>(coc-codeaction-refactor)
nnoremap <nowait> <silent>  qf <Plug>(coc-fix-current)
nnoremap <nowait> <silent>  as <Plug>(coc-codeaction-source)
nnoremap <nowait> <silent>  ac <Plug>(coc-codeaction-cursor)
xnoremap <nowait> <silent>  a <Plug>(coc-codeaction-selected)
xnoremap <silent>  f <Plug>(coc-format-selected)
nnoremap <silent>  rn <Plug>(coc-rename)
nmap  gm <Plug>(git-messenger)
nnoremap <silent>  pc :wincmd p | pclose
nnoremap <silent>  b :buffers:buffer 
nnoremap <silent>  x <Cmd>!chmod +x %
nnoremap <nowait> <silent>  s :CocList -I symbols
nnoremap <nowait> <silent>  j :CocNext
nnoremap <nowait> <silent>  k :CocPrev
nnoremap <silent>  f <Plug>(coc-format-selected)
vnoremap  d "_d
nnoremap  d "_d
nnoremap  Y "+Y
vnoremap  y "+y
nnoremap  y "+y
xnoremap  p "_dP
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap J mzJ`z
vnoremap J :m '>+1gv=gv
nnoremap <silent> K <Cmd>lua _G.show_docs()
vnoremap K :m '<-2gv=gv
nnoremap N Nzzzv
nnoremap Q <Nop>
onoremap <silent> S <Plug>(leap-backward-to)
nnoremap <silent> S <Plug>(leap-backward-to)
xmap S <Plug>VSurround
onoremap <silent> X <Plug>(leap-backward-till)
xnoremap <silent> X <Plug>(leap-backward-till)
nnoremap Y y$
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
onoremap <nowait> <silent> ac <Plug>(coc-classobj-a)
xnoremap <nowait> <silent> ac <Plug>(coc-classobj-a)
onoremap <nowait> <silent> af <Plug>(coc-funcobj-a)
xnoremap <nowait> <silent> af <Plug>(coc-funcobj-a)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
onoremap <silent> gs <Plug>(leap-from-window)
xnoremap <silent> gs <Plug>(leap-from-window)
nnoremap <silent> gs <Plug>(leap-from-window)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gd <Plug>(coc-definition)
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
onoremap <nowait> <silent> ic <Plug>(coc-classobj-i)
xnoremap <nowait> <silent> ic <Plug>(coc-classobj-i)
onoremap <nowait> <silent> if <Plug>(coc-funcobj-i)
xnoremap <nowait> <silent> if <Plug>(coc-funcobj-i)
nnoremap n nzzzv
onoremap <silent> s <Plug>(leap-forward-to)
xnoremap <silent> s <Plug>(leap-forward-to)
nnoremap <silent> s <Plug>(leap-forward-to)
onoremap <silent> x <Plug>(leap-forward-till)
xnoremap <silent> x <Plug>(leap-forward-till)
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
xnoremap <silent> <C-S> <Plug>(coc-range-select)
vnoremap <nowait> <silent> <expr> <C-B> coc#float#has_scroll() ? coc#float#scroll(0) : ""
vnoremap <nowait> <silent> <expr> <C-F> coc#float#has_scroll() ? coc#float#scroll(1) : ""
nnoremap <nowait> <silent> <expr> <C-B> coc#float#has_scroll() ? coc#float#scroll(0) : ""
nnoremap <nowait> <silent> <expr> <C-F> coc#float#has_scroll() ? coc#float#scroll(1) : ""
noremap <silent> <C-Bslash> :TmuxNavigatePrevious
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <silent> <Plug>(git-messenger-scroll-up-half) :call gitmessenger#scroll(bufnr('%'), 'C-u')
nnoremap <silent> <Plug>(git-messenger-scroll-down-half) :call gitmessenger#scroll(bufnr('%'), 'C-d')
nnoremap <silent> <Plug>(git-messenger-scroll-up-page) :call gitmessenger#scroll(bufnr('%'), 'C-b')
nnoremap <silent> <Plug>(git-messenger-scroll-down-page) :call gitmessenger#scroll(bufnr('%'), 'C-f')
nnoremap <silent> <Plug>(git-messenger-scroll-up-1) :call gitmessenger#scroll(bufnr('%'), 'C-y')
nnoremap <silent> <Plug>(git-messenger-scroll-down-1) :call gitmessenger#scroll(bufnr('%'), 'C-e')
nnoremap <silent> <Plug>(git-messenger-into-popup) :call gitmessenger#into_popup(bufnr('%'))
nnoremap <silent> <Plug>(git-messenger-close) :call gitmessenger#close_popup(bufnr('%'))
nnoremap <silent> <Plug>(git-messenger) :GitMessenger
onoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Interface', 'Struct', 'Class'])
vnoremap <silent> <Plug>(coc-classobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Interface', 'Struct', 'Class'])
onoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, '', ['Method', 'Function'])
onoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, '', ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-a) :call CocAction('selectSymbolRange', v:false, visualmode(), ['Method', 'Function'])
vnoremap <silent> <Plug>(coc-funcobj-i) :call CocAction('selectSymbolRange', v:true, visualmode(), ['Method', 'Function'])
nnoremap <silent> <Plug>(coc-cursors-position) :call CocAction('cursorsSelect', bufnr('%'), 'position', 'n')
nnoremap <silent> <Plug>(coc-cursors-word) :call CocAction('cursorsSelect', bufnr('%'), 'word', 'n')
vnoremap <silent> <Plug>(coc-cursors-range) :call CocAction('cursorsSelect', bufnr('%'), 'range', visualmode())
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-source) :call       CocActionAsync('codeAction', '', ['source'], v:true)
nnoremap <Plug>(coc-codeaction-refactor) :call       CocActionAsync('codeAction', 'cursor', ['refactor'], v:true)
nnoremap <Plug>(coc-codeaction-cursor) :call       CocActionAsync('codeAction', 'cursor')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction', 'currline')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction', '')
vnoremap <Plug>(coc-codeaction-refactor-selected) :call       CocActionAsync('codeAction', visualmode(), ['refactor'], v:true)
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction', visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected', visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
vnoremap <silent> <C-H> :TmuxNavigateLeft
onoremap <silent> <C-H> :TmuxNavigateLeft
nnoremap <silent> <S-Tab> :lua if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then vim.cmd('write') end vim.cmd('bprevious')
noremap <silent> <C-J> :TmuxNavigateDown
noremap <silent> <C-K> :TmuxNavigateUp
nnoremap <C-U> zz
nnoremap <C-D> zz
noremap <silent> <C-L> :TmuxNavigateRight
inoremap <silent> <expr>  coc#refresh()
inoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? "=coc#float#scroll(0)" : "<Left>"
inoremap  
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#cancel() : "\"
inoremap <nowait> <silent> <expr>  coc#float#has_scroll() ? "=coc#float#scroll(1)" : "<Right>"
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <NL> <Plug>(coc-snippets-expand-jump)
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "	" : coc#refresh()
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#prev(1) : "\"
imap  <Plug>Isurround
inoremap  u
inoremap  u
inoremap <silent> <expr>  coc#pum#visible() ? coc#pum#confirm() : "\u\\=coc#on_enter()\"
let &cpo=s:cpo_save
unlet s:cpo_save
set expandtab
set guicursor=
set helplang=en
set isfname=#,$,%,+,,,-,.,/,48-57,=,@,_,~,@-@
set mouse=
set runtimepath=~/.config/nvim,/usr/local/etc/xdg/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects,~/.local/share/nvim/site/pack/packer/start/nvim-treesitter,~/.local/share/nvim/site/pack/packer/start/packer.nvim,~/.local/share/nvim/site/pack/*/start/*,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.9.4/share/nvim/runtime,/usr/local/Cellar/neovim/0.9.4/share/nvim/runtime/pack/dist/opt/matchit,/usr/local/Cellar/neovim/0.9.4/lib/nvim,~/.local/share/nvim/site/pack/*/start/*/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/local/etc/xdg/nvim/after,~/.config/nvim/after
set scrolloff=8
set shiftwidth=4
set smartindent
set softtabstop=4
set splitright
set statusline=%{coc#status()}%{get(b:,'coc_current_function','')}
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.class
set noswapfile
set tabstop=4
set termguicolors
set undofile
set updatetime=300
set window=45
set nowritebackup
" vim: set ft=vim :
