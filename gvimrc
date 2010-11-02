" Font
set gfn=Inconsolata\ Medium\ 12
 
" No audible bell
set vb
 
" No toolbar
set guioptions-=T
 
" Use console dialogs
set guioptions+=c
 
" Setting defaults for different platforms
if has("gui_running")
    "tell the term has 256 colors
    set t_Co=256
    set background=dark
    colorscheme molokai
    set guitablabel=%M%t
    set lines=40
    set columns=115

    if has("gui_gnome")
        "Setting 256color seems to screw up vim on Ubuntu 10.10
        "set term=gnome-256color
        colorscheme molokai
        set guifont=Inconsolata\ Medium\ 12
    endif

    if has("gui_mac") || has("gui_macvim")
        set guifont=Inconsolata:h14

        " Fullscreen takes up entire screen
        set fuoptions=maxhorz,maxvert

        " key binding for Command-T to behave properly
        " uncomment to replace the Mac Command-T key to Command-T plugin
        "macmenu &File.New\ Tab key=<nop>
        "map <D-t> :CommandT<CR>
        " make Mac's Option key behave as the Meta key
        set invmmta
        try
          set transparency=0
        catch
        endtry
    endif

    if has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h12
        set enc=utf-8
    endif
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1
endif

" Local config
if filereadable(".gvimrc.local")
  source .gvimrc.local
endif

