// Coverage: DECORATOR-CLASS-FEATURE-0087, DECORATOR-CLASS-FEATURE-TD-0087
// Stage 9 fail_compile: override method with return type mismatch
// Single expected error point: override method return type differs from base
// No sendable, no PR10632, no ArkUI

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class Base {
  value(): number {
    return 1
  }
}

class Derived extends Base {
  @methodDec
  override value(): string {  // ERROR: override return type mismatch
    return "hello"
  }
}
