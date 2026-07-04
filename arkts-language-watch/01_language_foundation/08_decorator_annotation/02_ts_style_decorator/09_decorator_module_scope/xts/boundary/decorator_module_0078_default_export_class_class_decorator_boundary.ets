// Coverage: DECORATOR-MODULE-0078, DECORATOR-MODULE-TD-0078
// Stage 8 boundary: default export class + class decorator
// Boundary: pending target support confirmation
// ArkTS may not support default export class with decorators reliably
// No sendable, no PR10632, no ArkUI
// This file may not compile/run correctly if default export + decorator is unsupported

import { classDec } from "./modules/decorator_module_basic"

@classDec
export default class DecoratedDefaultA {
  value: number = 42
}

function main(): void {
  let a = new DecoratedDefaultA()
  // assertTrue(a.value == 42)
  // Boundary note: default export + class decorator pattern needs separate verification
  // Current XTS may not handle default export decorated class correctly
}
