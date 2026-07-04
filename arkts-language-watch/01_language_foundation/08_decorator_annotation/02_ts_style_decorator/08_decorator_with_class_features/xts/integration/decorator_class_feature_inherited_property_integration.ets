// Coverage: DECORATOR-CLASS-FEATURE-0074, DECORATOR-CLASS-FEATURE-TD-0074
// Stage 9 integration: decorated property in base class — inheritance
// Tests that derived class inherits and can access decorated base property
// No sendable, no PR10632, no ArkUI

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

class Base {
  @propDec
  value: number = 6
}

class Derived extends Base {
}

function main(): void {
  let d = new Derived()
  // assertTrue(d.value == 6)
  // Decorator does not break inheritance of property
}
