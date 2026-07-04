// Coverage: DECORATOR-MODULE-0019, DECORATOR-MODULE-TD-0019
// Stage 8 integration: import class decorator factory from module
// Tests that imported class decorator factory evaluates and applies correctly
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { classFactory, classFactoryLog } from "./modules/decorator_factory_module"

@classFactory("tagA")
class A {
  value: number = 42
}

@classFactory("tagB")
class B {
  name: string = "test"
}

function main(): void {
  let a = new A()
  let b = new B()
  // assertTrue(a.value == 42)
  // assertTrue(b.name == "test")
  // Factory and returned decorator should both be called
  // assertTrue(classFactoryLog == "classFactory:tagAclassFactoryDec:tagAclassFactory:tagBclassFactoryDec:tagB")
}
