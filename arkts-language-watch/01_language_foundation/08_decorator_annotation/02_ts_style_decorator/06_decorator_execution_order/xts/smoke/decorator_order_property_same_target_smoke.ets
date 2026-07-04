function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-ORDER-0018, DECORATOR-ORDER-TD-0018
// Stage 7 smoke: property decorators same target order
// Tests that both decorators are called on the same property target.
// Fixed order: pending confirmation (TS legacy uses bottom-up call order)
// No sendable, no factory, no PR10632

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
  value: number = 1
}

function main(): void {
  let a = new A()
  assertTrue(a.value == 1)
  // Both decorators should be called â€?fixed order pending confirmation
  assertTrue(order.length == 2)
  assertTrue(order.indexOf("1") >= 0)
  assertTrue(order.indexOf("2") >= 0)
}
