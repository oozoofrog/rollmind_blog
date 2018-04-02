# Wiki

### TODO
- [o]  모든 HTML 템플릿에 Vue.js 적용
    - [X] wiki link replace 함수 추가(from [johngrib](https://johngrib.github.io))
    ~~~javascript
function replaceWikiLink(query) {
    var content = document.querySelector(query);
    content.innerHTML = content.innerHTML.replace(/\[\[(.+?)\]\]\{(.+?)\}/g, '<a href="wiki/$1">$2</a>'); == ==
    content.innerHTML = content.innerHTML.replace(/\[\[(.+?)\]\]/g, '<a href="wiki/$1">$1</a>');
}
    ~~~
- [ ]  마크다운 파일 생성시 yaml 자동 생성 할 수 있는 방법을 모색해보자
- [ ]  한글 링크 처리를 어떻게 하면 좋을지 고민해보자

[[작성자는_누구?]]
[[작성자는 누구?]]

[[rollmind]]
