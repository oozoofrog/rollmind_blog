---
layout  : wiki
title   : RxSwift의 이것저것
summary : 
date    : 2018-07-24 08:55:38 +0900
updated : 2018-07-24 09:03:53 +0900
tags    : 
toc     : true
public  : true
parent  : swift
parenttitle : swift
latex   : false
---
* TOC
{:toc}

# Observable, Observer의 상호참조 조사

일단 참조 구조를 순환 참조구성을 목표로 간단히 흉내내 봤다.

```swift

import RxSwift
import RxCocoa
import RxBlocking
import RxTest

class Bag {
    var items: [Any] = []
}

class Observer<Element> {
    var handle: (Element) -> Void

    init(_ handle: @escaping (Element) -> Void) {
        self.handle = handle
    }

    deinit {
        print("deinit observer for \(type(of: Element.self))")
    }
}

class Observable<Element> {

    var observers: [(Element) -> Void] = []
    var subscribes: [(Element) -> Void] = []

    func create(_ handle: @escaping ((Element) -> Void) -> Void) -> Observable<Element> {
        let observer: Observer<Element> = Observer { event in
            self.subscribes.forEach({ (handle) in
                handle(event)
            })
        }
        observers.append(observer.handle)
        handle(observer.handle)

        return self
    }

    func subscribe(_ handle: @escaping (Element) -> Void) -> Observable {
        self.subscribes.append(handle)
        return self
    }

    deinit {
        print("deinit observable for \(type(of: Element.self))")
    }

}

class ViewController {

    let bag = Bag()

    init() {
        self.viewDidLoad()
    }

    var value: Int = 0 {
        didSet {
            print(value)
        }
    }

    func viewDidLoad() {
        let observable = Observable<Int>()
            .create { (event) in
                event(10)
            }
            .subscribe { value in
                self.value = value
        }
        self.bag.items.append(observable)

//        self.bag.items.removeAll()
//        observable.observers.removeAll()
    }

    deinit {
        print("deinit \(type(of: self))")
    }
}

var vc: ViewController? = ViewController()
vc = nil // ViewController.viewDidLoad의 주석부분을 해지하지 않으면 ViewController의 참조는 해지되지 않는다.

```
