// Coverage: DECORATOR-CLASS-FEATURE-0027, DECORATOR-CLASS-FEATURE-TD-0027
// Stage 9 fail_compile: field type mismatch with initializer + property decorator
// Single expected error point: field declared as number but initialized with string
// No sendable, no PR10632, no ArkUI

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

class A {
  @propDec
  value: number = "hello"  // ERROR: Type 'string' is not assignable to type 'number'
}
