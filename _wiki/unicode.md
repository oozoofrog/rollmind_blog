---
layout  : wiki
title   : 유니코드
summary : 유니코드에 대한 정리
date    : 2018-04-13 22:13:26 +0900
updated : 2018-04-14 00:09:29 +0900
tags    : 
toc     : true
public  : true
parent  : study
latex   : false
---
* TOC
{:toc}

*더 이상 유니코드 때문에 이것저것 찾아보며 열받기 싫어서 머리에 넣어놓기로 했다.*

# 유니코드의 역사

## 유니코드 협회(Unicode Consortium)
제록스(Xerox)의 조 베커(Joe Becker)와 애플의 리 콜린스(Lee Collins), 마크 데이비스(Mark Davis)에 의해 'Unicode'라고 불린 새로운 캐릭터 인코딩이 논의되기 시작했고, 4년 후 캘리포니아 주에서 1991년 1월에 유니코드 협회가 발족되었다. (아주 잘 했다.)

## 짧게 보는 유니코드

### 유니코드의 주요 목표

* 범용성(universal) - 모든 언어에 대응.
* 일관성(uniform) - 효율적인 접근을 위한 고정폭을 가진 코드.
* 유일성(unique) - 비트 배열은 하나의 캐릭터를 위한 하나의 해석만을 가짐.

16비트 범용 코드는 새로운 개념은 아니며, ISO 멀티 바이트 문자 인코딩의 원래 원칙에서도 그래픽 문자를 위한 ISO 표준 개발과 2 바이트 그래픽 문자셋을 위한 코딩에서 프로그래밍 언어는 각 문자열에 동일한 양의 저장소를 가질 것을 고려해야 한다고 명시했다. \[ISO/TC97/SC2 N1436, 1984\]
- 원본 문서를 못찾겠다. 살려줘.

### 기원
애플과 제록의 엔지니어 세 명이 무슨일로 토론을 했을까? 어쨌거나 1987년 말에 프로젝트를 시작했고, 1988년에 세 가지 조사가 완료되었단다.

- 고정폭, 가변폭(여기서 폭(width)는 바이트 길이를 의미하는듯)을 가진 텍스트의 접근성 비교
- 2 바이트 텍스트에 대한 시스템 저장소의 요구사항 조사
- 세계의 모든 철자에 대한 예비 문자의 갯수

요런 것들로 저 세 명의 혁명가 혹은 범죄자들이 유니코드를 위한 기본 아키텍처를 끌어냈다.

- 1988년
	- 콜린스가 유니코드 문자 데이터베이스 구축을 시작
원래 디자인은 복합 문자를 제외하고, 스크립트 내에서 알파벳순으로 정렬했다. 제록스는 폰트 구축을 위해 이미 [Unified Han](https://en.wikipedia.org/wiki/Han_unification )\(한중일\(CJK\) 문자집합\)이라는 데이터베이스를 구축했다. 애플의 콜린스는 [Han Unification](https://en.wikipedia.org/wiki/Han_unification ) 데이터베이스 구축을 위해 RLG\(The Research Libraries Group\)로부터 EACC 문자열의 데이터베이스를 사용했다. 베커와 콜린스는 후에 두 데이터베이스를 연계했고, 콜린스는 다른 국제 표준을 위해 다른 문자열들을 취합하며 해당 데이터베이스를 확장했다.

- 1989년
	- 초반, 다른 회사들이 참여. 당시, Metaphor의 켄 휘슬러(Ken Whistler)와 마이크 커나한(Mike Kernaghan), [RLG](https://en.wikipedia.org/wiki/Research_Libraries_Group)의 카렌 스미스 요시무라(Karen Smith-Yoshimura)와 조앤 앨리프랜드(Joan Aliprand), Sun의 글렌 라이트(Glen Wright)가 작업 그룹에 합류하여 디자인에 큰 기여를 시작했다.
	- 중반, 유니코드를 기존 표준에 가깝게 하기 위한 여러 변경이 있었다. 존재하던 모든 ISO 복합 문자(composite character)가 유니코드에 추가되었고, **[round trips](https://en.wikipedia.org/wiki/Round-trip_format_conversion)**(국제 표준에서 두 문자로 이루어진 모든 문자는 유니코드로 분류)
- 1990년
	- 마이크로소프트를 대표하여 Michel Suignard와 Asmus Freytag가 합류. 그들은 Whistler와 함께 다른 문자 인코딩 표준에 대한 매핑 테이블을 만들기 위해 광범위한 작업을 지속했다. 1990년 봄에 유니코드 알파벳과 기호는 완성되었지만, 교차 매핑 작업은 계속되었다. ISO 10646(유니코드 표준안 및 워킹 그룹), IBM, Mac과 국제 표준에 대한 이 광범위한 매핑 작업은 완전하고 효과적인 인코딩을 제작하는데 매우 가치있는 도움이 되었다.
