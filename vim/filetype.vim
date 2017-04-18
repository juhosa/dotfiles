au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au FileType vue setlocal ts=2 sw=2 sts=2
au FileType javascript setlocal ts=2 sw=2 sts=2
au FileType html setlocal ts=2 sw=2 sts=2
au FileType stylus setlocal ts=2 sw=2 sts=2
au FileType pug setlocal ts=2 sw=2 sts=2
au FileType css setlocal ts=2 sw=2 sts=2
au FileType vue.html.javascript.css setlocal ts=2 sw=2 sts=2
