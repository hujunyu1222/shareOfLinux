"syntax on 

"colorscheme evening 

"set number

"set shiftwidth=4

"set tabstop=4

"set ignorecase smartcase
"set hlsearch

"set scrolloff=999

"-------------------------------
"add head automatically
"add or update the head
"map <F4> :call TitleDet()<cr>
"func SetTitle()
"	call append (0, "/***********************************")
"	call append (1, " *		COPYRIGHT NOTICE")
"	call append (2, " *		Copyright (c) 2015")
"	call append (3, " *		All rights reservered")
"	call append (4, " * 						")
"	call append (5, " *		@author			:Junyu Hu	hujunyu1222@gmail.com")
"	call append (6, " *		@file			:".expand("%:p:h")."/".expand("%:t"))
"	call append (7, " *		@date			:".strftime("%Y-%m-%d %H:%M"))
"	call append (8, " *							")
"	call append (9, " *		@discription	:	")
"	call append (10, " *							")
"	call append (11, " ***********************************/")
"
"	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
"endfunc

"func UpdateTitle()
"	normal m'
"	execute ' /*		@file			:/s@:.*$@\=":".expand("%:p:h")."/".expand("%:t")@' 
"	normal ''
"	normal mk
"	execute ' /*		@date			:/s@:.*$@\=":".strftime("%Y-%m-%d %H:%M")@'
"	execute "noh"
"	normal 'k
"	echohl WarningMsg | echo "Successful in updating the copyright" | echohl None
"endfunc

"func	TitleDet()
"	let n = 2
"		let line = getline(n)
"		let str = '^\s\*\s\+COPYRIGHT\sNOTICE'
"		if line =~ str
"			call UpdateTitle()
"			return
"		endif
"	call SetTitle()
"endfunc
