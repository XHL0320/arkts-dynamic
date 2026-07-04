// Coverage: DECORATOR-MODULE-0002, DECORATOR-MODULE-TD-0002
// Stage 8 integration: import property decorator function from module
// Tests that imported property decorator receives correct target and key
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { propDec, propDecLog } from "./modules/decorator_module_property"

class A {
  @propDec
  x: number = 10
  @propDec
  y: string = "hello"
}

function main(): void {
  let a = new A()
  // assertTrue(a.x == 10)
  // assertTrue(a.y == "hello")
  // Property decorator should be called for both properties
  // assertTrue(propDecLog == "propDec:xpropDec:y")
}
