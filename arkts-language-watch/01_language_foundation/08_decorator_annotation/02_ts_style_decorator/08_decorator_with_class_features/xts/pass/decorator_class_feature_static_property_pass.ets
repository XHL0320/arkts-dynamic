function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-CLASS-FEATURE-0001, DECORATOR-CLASS-FEATURE-TD-0001
// Stage 9 pass: static property + property decorator
// Tests that static property value is accessible after decorator application
// No sendable, no PR10632, no ArkUI
// descriptor/equivalent structure pending â€?uses 2-param form for property decorator

function propDec(target: Object, key: string): void {
  // Simple property decorator â€?no modification
}

class A {
  @propDec
  static version: number = 1
}

function main(): void {
  let v: number = A.version
  assertTrue(v == 1)
}
