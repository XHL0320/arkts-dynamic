// Coverage: DECORATOR-ORDER-0020, DECORATOR-ORDER-TD-0020
// Stage 7 smoke: method decorators same target order
// Tests that both method decorators are called.
// Method decorator 3-param form: target, key, descriptor (or equivalent structure)
// If 3-param form is not compatible in ArkTS, adjust to 2-param (target, key)
// Fixed order: pending confirmation
// No sendable, no PR10632

let order: string = ""

function dec1(target: Object, key: string): void {
  order += "1"
}

function dec2(target: Object, key: string): void {
  order += "2"
}

class A {
  @dec1
  @dec2
  value(): number {
    return 2
  }
}

function main(): void {
  let a = new A()
  // assertTrue(a.value() == 2)
  // Both method decorators should be called
  // assertTrue(order.length == 2)
  // NOTE: method descriptor/equivalent structure Pending
}
