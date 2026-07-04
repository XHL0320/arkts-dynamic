// Coverage: DECORATOR-CLASS-FEATURE-0087, DECORATOR-CLASS-FEATURE-TD-0087
// Stage 9 fail_compile: override method with parameter type mismatch
// Single expected error point: override method parameter type differs from base
// No sendable, no PR10632, no ArkUI

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class Base {
  value(x: number): number {
    return x
  }
}

class Derived extends Base {
  @methodDec
  override value(x: string): number {  // ERROR: override parameter type mismatch
    return 1
  }
}
