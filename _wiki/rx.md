---
layout  : wiki
title   : 
summary : 
date    : 2018-04-09 17:21:34 +0900
updated : 2018-04-24 17:58:27 +0900
tags    : 
toc     : true
public  : true
parent  : developing
latex   : false
comments : true
---
* TOC
{:toc}

# 여러가지 상황에서의 Rx 사용

### carchError 

- HotObservable인 경우 catchError에서 .error가 아닌 Observable을 반환하게 되면 observable이 dispose된다.

### UIView

- UIButton들의 rx.tap 이벤트를 하나의 스트림으로 처리할 경우
~~~swift
let buttons:[Observable<Void>] = [UIButton].map { $0.rx.tap.asObservable() } // tap의 controlEvent를 merge에서 바로 못쓴다.
let observable = Observable<Void>.merge(buttons)
~~~
이것으로 각 이벤트를 하나의 스트림으로 엮을 수 있다.
