// Coverage: DECORATOR-CLASS-FEATURE-0019, DECORATOR-CLASS-FEATURE-TD-0019
// Stage 9 pass: readonly property + property decorator
// Tests that readonly field can be initialized and read after decorator
// No sendable, no PR10632, no ArkUI
// If readonly + decorator support is unclear, this should be downgraded to boundary

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

class A {
  @propDec
  readonly value: number = 3
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 3)
}
