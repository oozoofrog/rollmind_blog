//: Playground - noun: a place where people can play

import Cocoa

class SetTest {
	var set1: Set<String> = Set() {
		didSet {
			print("set 1 observed \(set1)")
		}
	}
	var set2: NSSet = NSSet() {
		didSet {
			print("set 2 observed \(set2)")
		}
	}
}

let setTest = SetTest()

setTest.set1.formUnion(Set(["HI"]))
setTest.set2.adding("HI2")
