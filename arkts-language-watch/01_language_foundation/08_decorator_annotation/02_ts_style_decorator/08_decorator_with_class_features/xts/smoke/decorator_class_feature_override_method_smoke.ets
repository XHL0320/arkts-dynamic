function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-CLASS-FEATURE-0087, DECORATOR-CLASS-FEATURE-TD-0087
// Stage 9 smoke: override method + method decorator
// Tests that decorated override method is callable and returns correct value
// Override syntax stability pending â€?boundary fallback if unstable
// No sendable, no PR10632, no ArkUI
// descriptor/equivalent structure pending â€?uses 2-param form

function methodDec(target: Object, key: string): void {
  // Simple method decorator â€?no modification
}

class Base {
  value(): number {
    return 1
  }
}

class Derived extends Base {
  @methodDec
  override value(): number {
    return 8
  }
}

function main(): void {
  let d = new Derived()
  assertTrue(d.value() == 8)
  // Override syntax stability pending â€?if unstable, downgrade to boundary
}
