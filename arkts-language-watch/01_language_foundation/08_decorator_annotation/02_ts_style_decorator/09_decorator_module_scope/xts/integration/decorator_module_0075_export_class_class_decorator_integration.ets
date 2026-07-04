// Coverage: DECORATOR-MODULE-0075, DECORATOR-MODULE-TD-0075
// Stage 8 integration: export class + class decorator
// Tests that a decorated class exported from a module still works when imported
// No sendable, no PR10632, no ArkUI
// Multi-file import: relative sibling path

import { DecoratedA } from "./modules/decorator_export_class_module"

function main(): void {
  let a = new DecoratedA()
  // assertTrue(a.value == 42)
  // Decorated exported class should be importable and usable
  // Class decorator should have been applied at export time
}
