// Coverage: DECORATOR-CLASS-FEATURE-0019, DECORATOR-CLASS-FEATURE-TD-0019
// Stage 9 fail_compile: assignment to readonly property after decorator
// Single expected error point: assigning to readonly decorated field
// No sendable, no PR10632, no ArkUI

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

class A {
  @propDec
  readonly value: number = 3
}

function main(): void {
  let a = new A()
  a.value = 10  // ERROR: Cannot assign to readonly property
}
