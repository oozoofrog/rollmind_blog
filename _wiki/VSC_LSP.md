---
layout  : wiki
title   : 비주얼 소스 코드에서 스위프트 LSP 사용하기
summary : 
date    : 2019-02-17 21:13:21 +0900
updated : 2019-02-17 22:58:01 +0900
tags    : 
toc     : true
public  : true
parent  : swift
parenttitle : swift
latex   : false
---
* TOC
{:toc}

# 시작
1. https://swift.org/download/#snapshots 에서 [swift-DEVELOPMENT_SNAPSHOT-2019-02-14-a](https://swift.org/builds/development/xcode/swift-DEVELOPMENT-SNAPSHOT-2019-02-14-a/swift-DEVELOPMENT-SNAPSHOT-2019-02-14-a-osx.pkg)를 다운로드하고 설치합니다.
2. `swift build` 명령어로 sourcekit-lsp 바이너리를 빌드합니다.
    3. 사실 여기에서 안되는 경우도 많을 겁니다. macos 인 경우 xcode project를 생성해서 xcode로 빌드하는 것이 더 편합니다.
    4. `swift package generate-xcodeproj --xcconfig-overrides overrides.xcconfig` 명령어를 실행하면 SourceKitLSP.xcodeproj 가 생깁니다.
4. VSC에서 sourcekit-lsp를 사용할 수 있도록 설정합니다.
    5. Preference/Extensions/sourcekit-lsp 에서 sourcekit-lsp 바이너리가 위치하는 경로와 swift toolchain 경로를 설정하게 되어있는데 맘편하게 실제 경로를 모두 넣어줍시다.
