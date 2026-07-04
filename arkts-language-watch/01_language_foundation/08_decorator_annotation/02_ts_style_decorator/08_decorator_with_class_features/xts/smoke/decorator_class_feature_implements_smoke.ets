function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-CLASS-FEATURE-0131, DECORATOR-CLASS-FEATURE-TD-0131
// Stage 9 smoke: decorated class implements interface
// Tests that decorated class satisfies interface contract
// Interface/implements stability pending â€?boundary fallback if unstable
// No sendable, no PR10632, no ArkUI

function classDec(target: Object): void {
  // Simple class decorator â€?no modification
}

interface I {
  value(): number
}

@classDec
class A implements I {
  value(): number {
    return 9
  }
}

function main(): void {
  let a: I = new A()
  assertTrue(a.value() == 9)
  // Interface/implements stability pending â€?if unstable, downgrade to boundary
}
