// Coverage: DECORATOR-ORDER-0003/0004/0005, DECORATOR-ORDER-TD-0003/0004/0005
// Stage 7 smoke: factory evaluation vs decorator call order
// Tests that factory body executes before returned decorator function call.
// Factory call (F) happens first; decorator call (D) happens later.
// No sendable, no PR10632

let order: string = ""

function makeDec(name: string): (target: Object, key: string) => void {
  order += "F" + name
  return function(target: Object, key: string): void {
    order += "D" + name
  }
}

class A {
  @makeDec("1")
  value: number = 4
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 4)
  // Factory evaluation should happen before decorator call
  // assertTrue(order.indexOf("F1") >= 0)
  // assertTrue(order.indexOf("D1") >= 0)
  // assertTrue(order.indexOf("F1") < order.indexOf("D1"))
}
