au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif
au FileType vue setlocal ts=2 sw=2 sts=2 et
au FileType javascript setlocal ts=2 sw=2 sts=2 et
au FileType html setlocal ts=2 sw=2 sts=2 et
au FileType stylus setlocal ts=2 sw=2 sts=2 et
au FileType pug setlocal ts=2 sw=2 sts=2 et
au FileType css setlocal ts=2 sw=2 sts=2 et
au FileType vue.html.javascript.css setlocal ts=2 sw=2 sts=2 et
