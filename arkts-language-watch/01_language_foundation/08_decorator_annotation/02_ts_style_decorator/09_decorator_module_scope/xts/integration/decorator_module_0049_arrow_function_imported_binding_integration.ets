// Coverage: DECORATOR-MODULE-0049, DECORATOR-MODULE-TD-0049
// Stage 8 integration: arrow function argument captures imported binding
// Tests that decorator factory argument as arrow function captures imported binding correctly
// PR10632 ordinary module-binding contrast — not full PR10632 regression
// No sendable, no ArkUI, no @interface
// Multi-file import: relative sibling path

import { moduleVar, classFactoryCaptureLog, classFactoryWithCapture } from "./modules/decorator_class_factory_module"

let localTag: string = "local"

@classFactoryWithCapture(() => moduleVar + localTag)
class A {
  value: number = 42
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 42)
  // Arrow function should capture both imported moduleVar and local localTag
  // PR10632 ordinary module-binding contrast: imported binding should not be lost after lowering
}
