---
layout  : wiki
title   : 
summary : 
date    : 2018-04-09 17:21:34 +0900
updated : 2018-04-09 17:23:31 +0900
tags    : 
toc     : true
public  : true
parent  : 
latex   : false
---
* TOC
{:toc}

# 여러가지 상황에서의 Rx 사용

### UIView

- UIButton들의 rx.tap 이벤트를 하나의 스트림으로 처리할 경우
~~~swift
let buttons: [UIButton]
let observable = Observable<Void>.merge(buttons)
~~~
이것으로 각 이벤트를 하나의 스트림으로 엮을 수 있다.
