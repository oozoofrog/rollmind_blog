---
layout: post
title: 스위프트 4.1은 뭐가 바뀌었을까?
---
* TOC
{: toc}

# 언어 개선

## Conditional Conformance
evolution: [SE-0143](https://github.com/apple/swift-evolution/blob/master/proposals/0143-conditional-conformances.md)

### in standard library

- Optional의 Wrapped가 Equatable을 상속받은 타입이라면 Optional도 Equatable이 됩니다.
- 이 말인 즉슨 `[Int?] == [Int?]` 비교가 가능해졌다는 이야기
- `[[Int]] == [[Int]]`도 가능합니다.
- Array, Dictionary의 Value가 Equatable이면 Array, Dictionary도 Equatable입니다.

### in code

~~~swift

protocol Valuable {}

struct Property<Value> {
	var property: String
	var value: Value
}

struct TestValue: Valuable {}
struct Int: Valuable {}

extension Property: Equatable where Value: Equatable {
	static func == (lhs: Property<Value>, rhs: Property<Value>) -> Bool {
		return lhs.property == rhs.property && lhs.value == rhs.value
	}
}

let t1 = Property(property: "t1", value: 1)
let t2 = Property(property: "t2", value: 1)

print(t1 == t2)
~~~
- 4.0까지는 상속 확장같은 제약조건이 있는 경우 where contaraint를 쓸 수가 없었지만, 4.1부터는 가능해졌습니다.
