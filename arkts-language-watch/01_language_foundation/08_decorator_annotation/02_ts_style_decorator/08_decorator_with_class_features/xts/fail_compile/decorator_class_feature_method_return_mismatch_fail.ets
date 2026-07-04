// Coverage: DECORATOR-CLASS-FEATURE-0076, DECORATOR-CLASS-FEATURE-TD-0076
// Stage 9 fail_compile: method return type mismatch + method decorator
// Single expected error point: method declares number return but returns string
// No sendable, no PR10632, no ArkUI

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class A {
  @methodDec
  value(): number {  // ERROR: Type 'string' is not assignable to return type 'number'
    return "hello"
  }
}
