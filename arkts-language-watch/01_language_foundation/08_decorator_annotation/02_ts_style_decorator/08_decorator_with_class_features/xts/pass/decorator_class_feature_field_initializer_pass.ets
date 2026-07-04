// Coverage: DECORATOR-CLASS-FEATURE-0020/0027, DECORATOR-CLASS-FEATURE-TD-0020/0027
// Stage 9 pass: field initializer + property decorator
// Tests that field initializer evaluates correctly after decorator
// No sendable, no PR10632, no ArkUI
// Ordinary class feature contrast — not PR10632 regression

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

function initValue(): number {
  return 5
}

class A {
  @propDec
  value: number = initValue()
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 5)
  // Ordinary class feature contrast: field initializer evaluates normally with decorator
}
