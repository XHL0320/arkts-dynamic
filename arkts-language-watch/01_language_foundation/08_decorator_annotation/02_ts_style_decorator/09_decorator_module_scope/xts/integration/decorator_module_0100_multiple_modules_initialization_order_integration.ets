function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-MODULE-0100, DECORATOR-MODULE-TD-0100
// Stage 8 integration: multiple modules initialization order
// Tests that decorator module initializes before the consuming module uses it
// Fixed order: pending confirmation
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { classDec, classDecLog } from "./modules/decorator_module_basic"
import { classFactory, classFactoryLog } from "./modules/decorator_factory_module"

@classDec
@classFactory("orderTest")
class A {
  value: number = 42
}

function main(): void {
  let a = new A()
  assertTrue(a.value == 42)
  // Both decorator module and factory module should have initialized before use
  assertTrue(classDecLog == "classDec")
  assertTrue(classFactoryLog.indexOf("classFactory:orderTest") >= 0)
  // Initialization order: decorator module â†?factory module â†?consuming module
  // Fixed order pending confirmation
}
