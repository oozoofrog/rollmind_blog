---
layout  : wiki
title   : JSONEncoder
summary : JSONEncoder 분
date    : 2018-04-26 10:34:20 +0900
updated : 2018-04-26 10:36:49 +0900
tags    : swift, json
toc     : true
public  : true
parent  : swift_source
parenttitle : 스위프트 소스 코드를 분석해보자.
latex   : false
---
* TOC
{:toc}

# JSONEncoder

- swift core source중에서 읽기가 꽤 쉬운 코드
- 내부에서 NSNumber와 JSONSerialization을 적극 활용하고 있다.
- 반복되는 코드는 Codable.gyb 파일로 템플릿을 만들어두고 사용한다.
- property에서 key, value를 추출하기 위해 Mirror를 사용할 거 같은데 코드상에는 드러나지 않는다. 아직 찾는 중
