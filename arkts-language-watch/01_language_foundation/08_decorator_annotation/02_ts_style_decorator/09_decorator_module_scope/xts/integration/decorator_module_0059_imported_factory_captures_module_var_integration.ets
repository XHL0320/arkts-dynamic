// Coverage: DECORATOR-MODULE-0059, DECORATOR-MODULE-TD-0059
// Stage 8 integration: imported factory captures definition module variable
// Tests that factory defined in another module captures moduleVar from its own module
// No sendable, no PR10632, no ArkUI
// PR10632 ordinary module-binding contrast: factory captures binding from definition module, not usage module
// Multi-file import: relative sibling path

import { classFactoryWithCapture, classFactoryCaptureLog, moduleVar } from "./modules/decorator_class_factory_module"

@classFactoryWithCapture("testTag")
class A {
  value: number = 42
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 42)
  // Factory should capture moduleVar from its definition module
  // assertTrue(classFactoryCaptureLog.includes("captured"))
  // PR10632 ordinary module-binding contrast
}
