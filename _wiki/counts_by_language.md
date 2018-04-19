---
layout  : wiki
title   : 프로그래밍 언어별 문자열 세기(feat. e
summary : 
date    : 2018-04-19 23:06:57 +0900
updated : 2018-04-19 23:30:15 +0900
tags    : 
toc     : true
public  : true
parent  : study
parenttitle : 공부, 그리고 공부
latex   : false
---
* TOC
{:toc}

# Swift 4.1
~~~swift
"👩‍👩‍👧‍👦".count // 1, 그래핌 갯수
"👩‍👩‍👧‍👦".underestimatedCount // 1, 그래핌 갯수
"👩‍👩‍👧‍👦".utf8.count // 25, utf8 유니코드 포인트 갯수
"👩‍👩‍👧‍👦".lengthOfBytes(using: .utf8) // 25, utf8 유니코드 포인트 갯수
"👩‍👩‍👧‍👦".utf16.count // 11, utf16 유니코드 포인트 갯수
"👩‍👩‍👧‍👦".lengthOfBytes(using: .utf16) / 2 // 11, utf16 유니코드 포인트 갯수, 2개의 바이트가 하나의 유니코드 포인트를 만들기 때문에 2로 나눔
"👩‍👩‍👧‍👦".unicodeScalars.count // 7, utf32 유니코드 포인트 갯수
"👩‍👩‍👧‍👦".lengthOfBytes(using: .utf32) / 4 // 7, utf32 유니코드 포인트 갯수, 4개의 바이트가 하나의 유니코드를 만들기 때문에 4로 나눔
~~~

# Java 9
