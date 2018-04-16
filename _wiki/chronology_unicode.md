---
layout  : wiki
title   : 유니코드 연대기
summary : 유니코드의 초창기부터 연대별 정리
date    : 2018-04-14 23:47:46 +0900
updated : 2018-04-16 23:23:18 +0900
tags    : unicode chronology
toc     : true
public  : true
parent  : unicode
parenttitle : 유니코드(Unicode)
latex   : false
---
* TOC
{:toc}

# 유니코드 연대기

*이 글은 unicode.org에 수록되어있는 unicode version 1.0가 나오기 까지의 연대별 히스토리입니다.*

## 1986~1987

제록스(Xerox)에서, Huan-mei Liao, Nelson Ng, Dave Opstad,  그리고 Lee Collins는 중국어 문자들을 확장하기 위한 폰트 작업을 빠르게 진행하기 위해 일본어(JIS)와 중국어(간체와 번체) 문자들 사이에서 공통문자들의 맵을 데이터베이스화하는 작업을 시작했다. 실제로도 토론토의 나카지마와 같은 제록스의 사용자들은 부족한 중국어 문자를 확장하기 위해 JIS를 이용하기도 했다. 이는 Eric Mader에 의해 작성된 Han Unification에 대한 찬반 논의로 이어졌다.

한편, 애플에서는(아 나 이런거 정말 좋아), [Apple File Exchange](https://en.wikipedia.org/wiki/Apple_File_Exchange )의 개발이 범용 문자셋에 대한 논의로 이어졌다. 애플의 Mark Davis가 [ANSI X3L2](http://sova.si.edu/record/NMAH.AC.0311 )(무료 스미스소니언 온라인 아카이브에 정보가 있군요. 컴퓨터 문자셋과 코드에 대한 논의였나봅니다.)에 참여를 시작했다.

## 1987년 4월

Peter Fenwick(신경심리학자가 여기서 왜 나와?냐면 Joe[seph D.] Becker가 바로 제록스에서 인공지능 신경망 연구자였거든요.)가 제록스를 방문하며 "0에서 시작하여 다음 문자를 추가"라는 Unicode의 원래 아키텍처에 영감을 줬단다. 또한, RLG(The Research Libraries Group)의 Alan Tucker와 Karen Smith-Yoshimura와 토론토 대학의 Nakajima도 참석했다.

## 1987년 가을

Joe Becker의 제록스 그룹은 Davis와 다국어에 대한 문제를 논의하기 시작했다. 새 캐릭터 인코딩이 주요 주제였다.

7년간의 Xeros [XCCS](https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Xerox_Character_Code_Standard.html )(Xerox Character Code Standard) 체계에 대한 Opstad에서의 경험에 의한 평가는 고정폭을 가진 디자인이 바람직하게 보였다. (어렵네, 네 그냥 고정폭이 좋은거 같어 라고 읽으세요.)

## 1987년 12월

Becker가 작성한 문서에서 독특하고(unique), 범용적이고(universal) 그리고, 일관성(uniform)있는 문자 인코딩이라는 의미에서 "Unicode"라는 용어가 처음 사용되었다. 

## 1988년 2월

애플에서는 Collins가 작업을 시작했다. 첫 번째 작업들 중 하나는 "High Text(Ascii는 Low Text)"라고 부르는 Davis의 고정폭을 가진 16비트 문자 인코딩을 애플의 차기 시스템에 고려하는 것이었다. 조사는 다음 세 가지로 모아졌다:
    a. 고정, 가변 폭 텍스트의 접근성 비교
    b. 2바이트 문자열에 대한 모든 시스텀 저장소의 요구사항 조사
    c. 세계의 모든 알파벳에 대해 준비한 문자 수
여러 문자열 인코딩에 대한 경험과 이런 조사 결과를 기반으로 유니코드의 기본 아키텍처를 만들어졌다. 이것은 Collins의 **유니코드 원칙** 문서에 더해졌다.

Becker는 달라스에서 열린 Uniforum(유닉스 컨퍼런스)에서 /usr/group 국제 소위원회에 유니코드 원칙들을 소개했다.

## 1988년 4월

애플에서 첫 유니코드 문자 인코딩의 프로토타입을 시작했다. 유니코드 지원을 [TrueType](https://ko.wikipedia.org/wiki/트루타입 )에 포함하기로 결정했다.

## 1988년 여름

Becker와 Collins는 한자 통합을 위한 표준을 논의하기 위해 팔로알토 다운타운의 RLG별관에서 RLG의 Tucker와 Smith-Yoshimura와의 만남을 가졌다.

## 1988년 7월

애플은 **Han Unification**의 연구를 위해 RLG의 CJK 문자 데이터베이스를 구입했다.

## 1988년 9월

Becker와 Collins는 **Han Unification**과 ISO DP 10646에서 허용하는 C0 C1 제어 문자 사용을 제안하기 위해 ANSI X3L2를 방문했다. 후에, Becker는 ISO WG2에서 **Unicode '88'**을 소개했다.
