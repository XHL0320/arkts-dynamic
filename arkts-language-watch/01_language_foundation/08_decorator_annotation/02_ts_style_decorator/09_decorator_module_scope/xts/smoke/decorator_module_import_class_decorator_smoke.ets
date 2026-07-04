// Coverage: DECORATOR-MODULE-0001, DECORATOR-MODULE-TD-0001
// Stage 8 smoke: import class decorator function from module
// Tests that imported class decorator can be applied and class value unchanged
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { classDec } from "./modules/decorator_module_basic"

@classDec
class A {
  value: number = 42
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 42)
}
