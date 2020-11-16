let g:startify_custom_header = [
		\ '                                                           ', 
		\ '		 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓   ',
		\ '		 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ',
		\ '		▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░   ',
		\ '		▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██    ', 
		\ '		▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒   ',
		\ '		░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░   ',
		\ '		░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░   ',
		\ '		   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ',
		\ '		         ░    ░  ░    ░ ░        ░   ░         ░      ',
		\ '		                                ░                     ',
        \]
                                      
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
    endfunction

let g:startify_bookmarks = [
            \ { 'p': '~/.config/polybar/config' },
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'b': '~/.config/bspwm/bspwmrc' },
            \ { 't': '~/.config/termite/config' },
            \ { 's': '~/.config/sxhkd/sxhkdrc' },
            \ { 'f': '~/.config/fish/config.fish' },
            \ { 'q': '~/.config/qutebrowser/config.py' },
            \ { 'a': '~/.config/alacritty/alacritty.yml' },
            \ { 'i': '~/.config/i3/config' },
            \ { 'x': '~/.Xresources' },                                         
            \ ]            

let g:startify_enable_special = 0