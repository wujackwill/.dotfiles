" vim设置
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undofile
set undofile
set incsearch
set scrolloff=8
set noshowmode
set nocompatible
" set guicursor=""
filetype plugin on
syntax on
set conceallevel=1
" set spell spelllang=en_us
set colorcolumn=80
set signcolumn=yes
map <SPACE> <leader>






"  " 插件
call plug#begin('C:\\Users\\jackwill\\AppData\\Local\\nvim')
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'frazrepo/vim-rainbow'
Plug 'chun-yang/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'dhruvasagar/vim-table-mode'
Plug 'mbbill/undotree'
Plug 'Shougo/unite.vim'
Plug 'rafaqz/citation.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'honza/vim-snippets'
Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LSP Support
Plug 'neovim/nvim-lspconfig'             " Required
Plug 'williamboman/mason.nvim'           " Optional
Plug 'williamboman/mason-lspconfig.nvim' " Optional

" Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         " Required
Plug 'hrsh7th/cmp-nvim-lsp'     " Required
Plug 'hrsh7th/cmp-buffer'       " Optional
Plug 'hrsh7th/cmp-path'         " Optional
Plug 'saadparwaiz1/cmp_luasnip' " Optional
Plug 'hrsh7th/cmp-nvim-lua'     " Optional

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets' " Optional

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

Plug 'onsails/lspkind.nvim'
Plug 'onsails/diaglist.nvim'

" R
"  Plug 'jalvesaq/Nvim-R'

" 状态栏
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

"  快捷键编译
Plug 'skywind3000/asyncrun.vim'

Plug 'Maan2003/lsp_lines.nvim'
"  快速注释
Plug 'numToStr/Comment.nvim'
" 移动插件
Plug 'ggandor/leap.nvim'
Plug 'ggandor/flit.nvim'

Plug 'github/copilot.vim'
Plug 'lervag/vimtex'
" copilot，如果没有账号可以注销掉
call plug#end()


" 背景设置
" colorscheme gruvbox
" hi Normal ctermfg=252 ctermbg=none
" let g:rainbow_active = 1
colorscheme catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"  " fuzzy finder
nnoremap <leader>pf <cmd>Telescope find_files<cr>
nnoremap <leader>pg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>



"  " undofire
nnoremap <F5> :UndotreeToggle<CR>


"  " Markdownpreview
nmap <F2><Plug>MarkdownPreview
nmap <F3> <Plug>MarkdownPreviewStop
nmap <F4> <Plug>MarkdownPreviewTogglae


" 自定义快捷键
" nnoremap <leader>ww :wq<CR>
nnoremap <C-s-q> :wq!<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>

"  " Rmarkdown 设置
"  autocmd BufRead,BufNewFile *.rmd set filetype=Rmd
"  autocmd Filetype Rmd  inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
"  autocmd Filetype Rmd  inoremap <buffer> <c-e> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
"  autocmd Filetype Rmd  inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
"  autocmd Filetype Rmd  inoremap <buffer> ,n ---<Enter><Enter>
"  autocmd Filetype Rmd  inoremap <buffer> ,b **** <++><Esc>F*hi
"  autocmd Filetype Rmd  inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
"  autocmd Filetype Rmd  inoremap <buffer> ,i ** <++><Esc>F*i
"  autocmd Filetype Rmd  inoremap <buffer> ,d `` <++><Esc>F`i
"  autocmd Filetype Rmd  inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
"  autocmd Filetype Rmd  inoremap <buffer> ,o - [ ]
"  autocmd Filetype Rmd  inoremap <buffer> ,pi ![](<++>) <++><Esc>F[a
"  autocmd Filetype Rmd  inoremap <buffer> ,a [](<++>) <++><Esc>F[a
"  autocmd Filetype Rmd  inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
"  autocmd Filetype Rmd  inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
"  autocmd Filetype Rmd  inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
"  autocmd Filetype Rmd  inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
"  autocmd Filetype Rmd  inoremap <buffer> ,l --------<Enter>
"  autocmd Filetype Rmd  inoremap <buffer> ,m ## <++><enter>
"  autocmd Filetype Rmd map <leader>la extra_dependencies: ['tikz','tikz-qtree']
"  autocmd Filetype Rmd inoremap <buffer>,w ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\\\Zotero\\\\m.bib'<enter>output:<enter><tab> word_document:<enter><tab>reference_docx: "C:\\\\Users\\\\zamen\\\\Documents\\\\template\\\\template.docx"<enter><left><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><++>
"  autocmd Filetype Rmd inoremap <buffer>,q ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\\\Zotero\\\\m.bib'<enter>documentclass: ctexart<enter>output:<enter><tab>rticles::ctex<enter><left><left><left><left><enter>---<enter><enter><++>
"  autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\\\Zotero\\\\m.bib'<enter>output:<enter><tab> powerpoint_presentation:<enter><tab>reference_doc: "C:\\\\Users\\\\zamen\\\\Documents\\\\template\\\\template.pptx"<enter><left><left><left><left><left><left><left><left><enter>---<enter><enter><left><left><left><left><left><left>## <++>
"  autocmd Filetype Rmd inoremap <buffer>,e ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\\\Zotero\\\\m.bib'<enter>output:<enter><tab> slidy_presentation<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>
"  autocmd Filetype Rmd inoremap <buffer>,r ---<enter>title: <++><enter>author: <++><enter>bibliography: 'E:\\\\Zotero\\\\m.bib'<enter>output:<enter><tab> html_document<enter><left><left><left><left><left><left>---<enter><enter><left><left><left><left><left><left>## <++>

"  " Rmarkdown编译
"  autocmd Filetype Rmd map <silent><F8> :!Rscript -e "rmarkdown::render('%')"<CR> :!sumatrapdf.exe  %:r.pdf<CR>


"  "LaTeX配置
"  let g:tex_flavor='latex'
"  let g:vimtex_texcount_custom_arg=' -ch -total'
"  "映射VimtexCountWords！\lw 在命令模式下enter此命令可统计中英文字符的个数
"  au FileType tex map <buffer> <silent>  <leader>lw :VimtexCountWords!  <CR><CR>
"  let g:Tex_ViewRule_pdf = 'C:\Users\jackwill\scoop\apps\sumatrapdf\current\SumatraPDF.exe -reuse-instance -inverse-search "neovim -c \":RemoteOpen +\%l \%f\""'

"  "这里是LaTeX编译引擎的设置，这里默认LaTeX编译方式为-pdf(pdfLaTeX),
"  "vimtex提供了magic comments来为文件设置编译方式
"  "例如，我在tex文件开头输入 % !TEX program = xelatex   即指定-xelatex （xelatex）编译文件
"  let g:vimtex_compiler_latexmk_engines = {
"      \ '_'                : '-xelatex',
"      \ 'pdflatex'         : '-pdf',
"      \ 'dvipdfex'         : '-pdfdvi',
"      \ 'lualatex'         : '-lualatex',
"      \ 'xelatex'          : '-xelatex',
"      \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
"      \ 'context (luatex)' : '-pdf -pdflatex=context',
"      \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
"      \}
"  "这里是设置latexmk工具的可选参数
"  let g:vimtex_compiler_latexmk = {
"      \ 'build_dir' : '',
"      \ 'callback' : 1,
"      \ 'continuous' : 1,
"      \ 'executable' : 'latexmk',
"      \ 'hooks' : [],
"      \ 'options' : [
"      \   '-verbose',
"      \   '-file-line-error',
"      \   '-shell-escape',
"      \   '-synctex=1',
"      \   '-interaction=nonstopmode',
"      \ ],
"      \}

"  " 阅读器相关的配置 包含正反向查找功能 仅供参考
"  let g:vimtex_view_general_viewer = 'C:\Users\jackwill\scoop\apps\sumatrapdf\current\SumatraPDF.exe' "这里放置你的sumatrapdf 安装路径
"  let g:vimtex_view_general_options_latexmk = '-reuse-instance'
"  let g:vimtex_view_general_options
"       \ = ' -reuse-instance -forward-search @tex @line @pdf'
"       \ . ' -inverse-search "' . 'cmd /c start /min \"\" '  . exepath(v:progpath)
"       \ . ' -v --not-a-term -T dumb -c  \"VimtexInverseSearch %l ''%f''\""' "for vim/gvim



"  "编译过程中忽略警告信息
"  let g:vimtex_quickfix_open_on_warning=1


"  let g:tex_flavor='latex'
"  let g:vimtex_quickfix_mode=1
"  set conceallevel=1
"  let g:tex_conceal='abdmg'


 " citation config
 autocmd Filetype Rmd :call Deletechace()

 function Deletechace()
     silent exec "!del D:\\\\Zotero\\\\citation_vim_cache"
 endfunction

 let g:citation_vim_bibtex_file="D:\\\\Zotero\\\\m.bib"
 let g:citation_vim_mode="bibtex"

 let g:citation_vim_reverse_order=1
 let g:citation_vim_cache_path='D:\\\\zotero'

 let g:citation_vim_zotero_attachment_path="D:\\\\Zotero\\\\storage"
 let g:citation_vim_et_al_limit=2
 let g:citation_vim_reverse_order=0

 " citation map

 nmap <leader>u [unite]
 nnoremap [unite] <nop>
 nnoremap <silent>[unite]c       :<C-u>Unite -buffer-name=citation-start-insert -default-action=append      citation/key<cr>
 nnoremap <silent>[unite]co :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/file<cr>
 nnoremap <silent><leader>cu :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/url<cr>
 nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
 nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
 nnoremap <silent>[unite]cs :<C-u>Unite  -default-action=yank  citation/key:<C-R><C-W><cr>

"  "  vim markdown config
"  "  let g:tex_conceal = ""
"  let g:vim_markdown_math = 1
"  let g:vim_markdown_folding_disabled = 1
"  set concealcursor=""
"  " Ensure files are read as what I want:

"  map <F9> :!pandoc --pdf-engine=xelatex % -o %:r.pdf -V mainfont="SimSun"<CR>
"  map <F12> :!pandoc % -o %:r.html<CR>





"  nmap <leader>pv :Ex<enter>



lua <<EOF
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>s", ":%s/\\\\<<C-r><C-w>\\\\>/<C-r><C-w>/gI<Left><Left><Left>")
EOF



lua <<EOF
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader><Tab>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>q", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>w", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>e", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>r", function() ui.nav_file(4) end)
EOF



lua <<EOF
local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
  'pyright'
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ["<C-c>"] = cmp.mapping.complete(),
})

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})



lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
 vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

-- vim.diagnostic.config({
--  virtual_text = true,
-- signs = true,
--  update_in_insert = true,
--  underline = true,
--  severity_sort = true,
--  float = {
--    focusable = true,
--    style = 'minimal',
--    border = 'rounded',
--    source = 'always',
--    header = '',
--    prefix = '',
--  },
-- })

vim.diagnostic.config({ virtual_lines = { only_current_line = true },
update_in_insert = true,
})

local lsp = require('lsp-zero')
lsp.preset('recommended')
local lspkind = require('lspkind')
lsp.setup_nvim_cmp({
formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](<https://github.com/onsails/lspkind-nvim/pull/30>))
      before = function (entry, vim_item)
        return vim_item
      end
    })
  }

})

lsp.setup()

EOF

lua <<EOF

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query","rust","python","javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


autocmd FileType python inoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  python "$(VIM_FILEPATH)"<CR> -strip
" autocmd FileType lisp inoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  sbcl -script "$(VIM_FILEPATH)"<CR> -strip
autocmd FileType python nnoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  python "$(VIM_FILEPATH)"<CR> -strip

autocmd FileType rust nnoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  cargo run "$(VIM_FILEPATH)"<CR> -strip
autocmd FileType rust inoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  cargo run "$(VIM_FILEPATH)"<CR> -strip


autocmd FileType lua nnoremap <buffer> <F8> :AsyncRun -cwd=$(VIM_FILEDIR) -mode=term -pos="bottom"  lua "$(VIM_FILEPATH)"<CR> -strip
lua << END
require('lualine').setup()
END

lua <<EOF
  require("lsp_lines").setup()
EOF


lua << EOF
require('Comment').setup()
EOF

lua require('leap').add_default_mappings()

" lua require('nvm-cmp.lua ')

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["C:\\\\Users\\\\jackwill\\\\AppData\\\\Local\\\\nvim\\\\mysnippet"]

imap <silent><script><expr> <C-J> copilot#Accept("\\<CR>")

