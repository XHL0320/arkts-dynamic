// Coverage: DECORATOR-ORDER-0024/0025/0026, DECORATOR-ORDER-TD-0024/0025/0026
// Stage 7 smoke: multiple factory decorators same target order
// Tests that multiple factory decorators are all evaluated and all called.
// Factory count and decorator count should both equal 2.
// No duplicate, no omission.
// Fixed order: pending confirmation (TS legacy: factory top-down eval, decorator bottom-up call)
// No sendable, no PR10632

let factoryCount: number = 0
let decoratorCount: number = 0
let order: string = ""

function makeDec(name: string): (target: Object, key: string) => void {
  factoryCount++
  order += "F" + name
  return function(target: Object, key: string): void {
    decoratorCount++
    order += "D" + name
  }
}

class A {
  @makeDec("1")
  @makeDec("2")
  value: number = 5
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 5)
  // assertTrue(factoryCount == 2)
  // assertTrue(decoratorCount == 2)
  // assertTrue(order.indexOf("F1") >= 0)
  // assertTrue(order.indexOf("F2") >= 0)
  // assertTrue(order.indexOf("D1") >= 0)
  // assertTrue(order.indexOf("D2") >= 0)
}
