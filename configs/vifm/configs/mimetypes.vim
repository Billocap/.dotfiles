" Directories 
set classify=" :dir:/"

" JSON 
set classify+=" ::<application/json>::"
set classify+=" ::/\\.json$/::"

" Compressed files 
set classify+=" ::<application/epub+zip>::"
set classify+=" ::<application/gzip>::"
set classify+=" ::<application/x-gzip>::"
set classify+=" ::<application/zip>::"
set classify+=" ::<application/zip-compressed>::"
set classify+=" ::<application/x-zip-compressed>::"
set classify+=" ::<application/x-gtar>::"
set classify+=" ::<application/x-tar>::"
set classify+=" ::<application/x-7z-compressed>::"

" Images 
set classify+=" ::<image/*>::"

" Audio 
set classify+=" ::<audio/*>::"

" Video 
set classify+=" ::<video/*>::"

" Font 
set classify+=" ::<font/*>::"

" HTML 
set classify+=" ::<text/html>::"
set classify+=" ::/\\.(html|htm)$/::"

" CSS 
set classify+=" ::<text/css>::"
set classify+=" ::/\\.css$/::"

" Javascript 
set classify+=" ::<text/javascript>::"
set classify+=" ::/\\.js$/::"

" Typescript 
set classify+=" ::/\\.ts$/::"

" React 
set classify+=" ::/\\.(jsx|tsx)$/::"

" Markdown 
set classify+=" ::<text/markdown>::"
set classify+=" ::/\\.(md|markdown|mdown|markdn|mdx)$/::"

" Assembly 
set classify+=" ::<text/x-asm>::"
set classify+=" ::/\\.(asm|s)$/::"

" Python 
set classify+=" ::<text/x-python>::"
set classify+=" ::/\\.py(|c|o|d)$/::"

" Shell 
set classify+=" ::<application/x-sh>::"
set classify+=" ::<application/x-shellscript>::"
set classify+=" ::/\\.(|ba|z)sh$/::"

" Header file 
set classify+=" ::/\\.h(|h|pp)$/::"

" C++ 
set classify+=" ::/\\.c(c|pp|xx)$/::"

" C lang 
set classify+=" ::<text/x-c>::"
set classify+=" ::/\\.(|di)c$/::"

" Lua 
set classify+=" ::<text/lua>::"
set classify+=" ::/\\.lua$/::"

" Configuration files 
set classify+=" ::<application/yaml>::"
set classify+=" ::/\\.(ya?ml|ini|conf)$/::"

" Text 
set classify+=" ::<text/*>::"
set classify+=" ::/\\.(l(og|ist)|(te?xt))$/::"

