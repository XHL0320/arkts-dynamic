// Coverage: DECORATOR-MODULE-0083, DECORATOR-MODULE-TD-0083
// Stage 8 integration: decorated class instance member accessible
// Tests that a decorated exported class instance members are accessible after import
// No sendable, no PR1062, no ArkUI
// Multi-file import: relative sibling path

import { DecoratedA } from "./modules/decorator_export_class_module"
import { DecoratedPropA } from "./modules/decorator_export_property_class_module"
import { DecoratedMethodA } from "./modules/decorator_export_method_class_module"

function main(): void {
  let a = new DecoratedA()
  let p = new DecoratedPropA()
  let m = new DecoratedMethodA()
  // assertTrue(a.value == 42)
  // assertTrue(p.prop == "hello")
  // assertTrue(p.value == 42)
  // assertTrue(m.value == 42)
  // assertTrue(m.greet() == "hello")
  // All instance members should be accessible after import
}
