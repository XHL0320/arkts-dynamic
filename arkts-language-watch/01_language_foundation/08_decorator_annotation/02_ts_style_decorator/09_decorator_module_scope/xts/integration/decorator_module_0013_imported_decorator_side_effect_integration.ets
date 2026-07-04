function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-MODULE-0013, DECORATOR-MODULE-TD-0013
// Stage 8 integration: imported decorator side effect
// Tests that imported decorator side effect occurs in correct order relative to class usage
// Fixed order: pending confirmation
// No sendable, no PR10632, no ArkUI
// PR10632 ordinary module-binding contrast â€?not full PR10632 regression

import { classDec, classDecLog } from "./modules/decorator_module_basic"

@classDec
class A {
  value: number = 42
}

function main(): void {
  let a = new A()
  assertTrue(a.value == 42)
  // Decorator side effect should have occurred before class instantiation
  assertTrue(classDecLog == "classDec")
}
