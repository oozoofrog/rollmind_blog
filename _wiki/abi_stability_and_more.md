---
layout  : wiki
title   : ABI 안정화 그리고 그 이상
summary : Swift 5.0부터 이루어진 ABI 안정화 그리고 좋아진 것들
date    : 2019-03-28 10:23:56 +0900
updated : 2019-03-28 10:51:01 +0900
tags    : 
toc     : true
public  : true
parent  : swift_5_0
parenttitle : Swift 5.0
latex   : false
---
* TOC
{:toc}

*원문 [ABI Stability and More](https://swift.org/blog/abi-stability-and-more/)*

macOS, iOS, watchOS, 그리고 tvOS에서 Swift의 ABI를 안정화시키는 것은 오랜 목표였습니다. 안정적인 ABI는 모든 언어에서 중요하지만, Swift 생태계에서 그것이 주는 궁극적인 이점은 앱과 라이브러리들의 [바이너리(-코드) 호환성(Binary-code compatibility)](https://en.wikipedia.org/wiki/Binary-code_compatibility)을 가능하게 한다는 것입니다. 이 글에서는 Swift 5에서 바이너리 호환성이 어떤 의미인지, 그리고 앞으로의 Swift 배포에 어떤 혁신을 가져올지 기술합니다.

다른 플랫폼에서는요? 라는 질문을 하실 수 있을거 같네요. ABI 안정화는 스위프트를 컴파일하고 실행할 수 있는 모든 운영체제에 적용되었습니다. 

# 
