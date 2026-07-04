function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-CLASS-FEATURE-0076, DECORATOR-CLASS-FEATURE-TD-0076
// Stage 9 integration: decorated method in base class â€?inheritance
// Tests that derived class inherits and can call decorated base method
// No sendable, no PR10632, no ArkUI
// descriptor/equivalent structure pending â€?uses 2-param form

function methodDec(target: Object, key: string): void {
  // Simple method decorator â€?no modification
}

class Base {
  @methodDec
  value(): number {
    return 7
  }
}

class Derived extends Base {
}

function main(): void {
  let d = new Derived()
  assertTrue(d.value() == 7)
  // Decorator does not break inheritance of method
}
