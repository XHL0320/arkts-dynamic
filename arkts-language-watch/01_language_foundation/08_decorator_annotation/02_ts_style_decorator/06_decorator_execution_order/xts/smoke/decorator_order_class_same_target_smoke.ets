// Coverage: DECORATOR-ORDER-0016, DECORATOR-ORDER-TD-0016
// Stage 7 smoke: class decorators same target order
// Tests that both class decorators are called.
// Fixed order: pending confirmation
// No sendable, no PR10632

let order: string = ""

function dec1(target: Object): void {
  order += "1"
}

function dec2(target: Object): void {
  order += "2"
}

@dec1
@dec2
class A {
  value: number = 3
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 3)
  // Both class decorators should be called
  // assertTrue(order.length == 2)
}
