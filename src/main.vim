cd %:p:h
let s:numMax = 50
if !isdirectory(expand('%:p:h').expand('/in'))
	silent! call mkdir(expand('%:p:h').expand('/in'), 'p')
	for $i in range(1, s:numMax)
		new in/$i.htm
		write
		bdelete
	endfor
	finish
endif
if isdirectory(expand('%:p:h').expand('/out'))
	silent! !rmdir/s/q out
endif
silent! call mkdir(expand('%:p:h').expand('/out'), 'p')
let s:array = ['brand', 'time', 'price', 'priceOrigin']
set noswapfile
for $i in s:array
	new out/$i.csv
	write
	bdelete
endfor
for $i in range(1, s:numMax)
	new in/$i.htm
	global/h2 cl/, . w >> ../out/brand.csv
	global/div class="t-i"/, . w >> ../out/time.csv
	global/p>.\+万/, . w >> ../out/price.csv
	global/\d\+万<\/em>/, . w >> ../out/priceOrigin.csv
	bdelete
endfor
for $i in s:array
	new out/$i.csv
	if index(s:array, $i) == 0
		silent! %substitute/                <h2 class="t">//g
		silent! %substitute/<\/h2>//g
	endif
	if index(s:array, $i) == 1
		silent! %substitute/                <div class="t-i">//g
		silent! %substitute/年<span class="icon-pad">|<\/span>/ /g
		silent! %substitute/公里//g
		silent! %substitute/<span class='icon-pad'>|<\/span>/ /g
		silent! %substitute/<\/div>//g
	endif
	if index(s:array, $i) == 2
		silent! %substitute/                    <p><span>补贴后<\/span>/1 /g
		silent! %substitute/                    <p>/0 /g
		silent! %substitute/<span>万<\/span><\/p>//g
	endif
	if index(s:array, $i) == 3
		silent! %substitute/                    <i class='i-blue'>严选车<\/i><em class='line-through'>/0 /g
		silent! %substitute/                    <i class='i-orange'>超值<\/i><i class='i-blue'>严选车<\/i><em class='line-through'>/1 /g
		silent! %substitute/万<\/em>                <\/div>//g
	endif
	silent! %substitute/ /, /g
	write
	bdelete
endfor
"https://www.guazi.com/nj/buy/o1/#bread
"https://www.guazi.com/nj/buy/o2/#bread
"https://www.guazi.com/nj/buy/o3/#bread
"https://www.guazi.com/nj/buy/o4/#bread
"https://www.guazi.com/nj/buy/o5/#bread
"https://www.guazi.com/nj/buy/o6/#bread
"https://www.guazi.com/nj/buy/o7/#bread
"https://www.guazi.com/nj/buy/o8/#bread
"https://www.guazi.com/nj/buy/o9/#bread
"https://www.guazi.com/nj/buy/o10/#bread
"https://www.guazi.com/nj/buy/o11/#bread
"https://www.guazi.com/nj/buy/o12/#bread
"https://www.guazi.com/nj/buy/o13/#bread
"https://www.guazi.com/nj/buy/o14/#bread
"https://www.guazi.com/nj/buy/o15/#bread
"https://www.guazi.com/nj/buy/o16/#bread
"https://www.guazi.com/nj/buy/o17/#bread
"https://www.guazi.com/nj/buy/o18/#bread
"https://www.guazi.com/nj/buy/o19/#bread
"https://www.guazi.com/nj/buy/o20/#bread
"https://www.guazi.com/nj/buy/o21/#bread
"https://www.guazi.com/nj/buy/o22/#bread
"https://www.guazi.com/nj/buy/o23/#bread
"https://www.guazi.com/nj/buy/o24/#bread
"https://www.guazi.com/nj/buy/o25/#bread
"https://www.guazi.com/nj/buy/o26/#bread
"https://www.guazi.com/nj/buy/o27/#bread
"https://www.guazi.com/nj/buy/o28/#bread
"https://www.guazi.com/nj/buy/o29/#bread
"https://www.guazi.com/nj/buy/o30/#bread
"https://www.guazi.com/nj/buy/o31/#bread
"https://www.guazi.com/nj/buy/o32/#bread
"https://www.guazi.com/nj/buy/o33/#bread
"https://www.guazi.com/nj/buy/o34/#bread
"https://www.guazi.com/nj/buy/o35/#bread
"https://www.guazi.com/nj/buy/o36/#bread
"https://www.guazi.com/nj/buy/o37/#bread
"https://www.guazi.com/nj/buy/o38/#bread
"https://www.guazi.com/nj/buy/o39/#bread
"https://www.guazi.com/nj/buy/o40/#bread
"https://www.guazi.com/nj/buy/o41/#bread
"https://www.guazi.com/nj/buy/o42/#bread
"https://www.guazi.com/nj/buy/o43/#bread
"https://www.guazi.com/nj/buy/o44/#bread
"https://www.guazi.com/nj/buy/o45/#bread
"https://www.guazi.com/nj/buy/o46/#bread
"https://www.guazi.com/nj/buy/o47/#bread
"https://www.guazi.com/nj/buy/o48/#bread
"https://www.guazi.com/nj/buy/o49/#bread
"https://www.guazi.com/nj/buy/o50/#bread
