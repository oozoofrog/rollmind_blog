---
layout: post
title: vimwiki+jekyll+깃헙페이지 개발하는 이야기
---

처음 위키 파일을 만들면 yaml을 상단 자동으로 생성하게 하고 싶었다. 그래서 아래와 같은 함수를 만드는데... 2시간 걸렸다...

`.vimrc`
~~~
function! AddYAML()
    if search('---', 'n', line(0)) < 1 && line('$') == 1
        exe "normal i"."---\nlayout: post\ntitle: " . expand('%:t') . "\n---"
    endif
endfunction

autocmd BufRead *.md call AddYAML()
~~~
