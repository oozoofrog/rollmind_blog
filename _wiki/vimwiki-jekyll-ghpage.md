---
layout: post
title: vimwiki+jekyll+깃헙페이지 개발하는 이야기
---

처음 위키 파일을 만들면 yaml을 상단 자동으로 생성하게 하고 싶었다. 그래서 아래와 같은 함수를 만드는데... 2시간 걸렸다...

`.vimrc`
~~~
function! AddYAML()
    " ---문자열을 검색해서 0이고, 전체 라인수가 1이면 버퍼가 존재하지 않는 처음 만들어진 파일이라고 판단 exe ... 명령어를 실행
    if search('---', 'n', line(0)) < 1 && line('$') == 1
        " normal 모드에서 i(nsert)를 사용해서 문자열을 추가
        exe "normal i"."---\nlayout: post\ntitle: " . expand('%:t') . "\n---"
    endif
endfunction

" md 확장자를 가진 파일을 읽은 직후 AddYAML() 함수를 실행
autocmd BufRead *.md call AddYAML()
~~~
