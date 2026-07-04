function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-CLASS-FEATURE-0054, DECORATOR-CLASS-FEATURE-TD-0054
// Stage 9 pass: decorated class constructor with one argument
// Tests that constructor receives argument correctly after class decorator
// No sendable, no PR10632, no ArkUI

function classDec(target: Object): void {
  // Simple class decorator â€?no modification
}

@classDec
class A {
  value: number

  constructor(v: number) {
    this.value = v
  }
}

function main(): void {
  let a = new A(4)
  assertTrue(a.value == 4)
}
