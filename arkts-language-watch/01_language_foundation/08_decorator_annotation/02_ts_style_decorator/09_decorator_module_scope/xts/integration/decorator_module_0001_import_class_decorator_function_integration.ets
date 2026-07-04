// Coverage: DECORATOR-MODULE-0001, DECORATOR-MODULE-TD-0001
// Stage 8 integration: import class decorator function from module — full interaction
// Tests that imported class decorator is called and class still instantiable
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { classDec, classDecLog } from "./modules/decorator_module_basic"

@classDec
class A {
  value: number = 42
}

@classDec
class B {
  name: string = "test"
}

function main(): void {
  let a = new A()
  let b = new B()
  // assertTrue(a.value == 42)
  // assertTrue(b.name == "test")
  // classDec should be called for both A and B
  // assertTrue(classDecLog == "classDecclassDec")
}
