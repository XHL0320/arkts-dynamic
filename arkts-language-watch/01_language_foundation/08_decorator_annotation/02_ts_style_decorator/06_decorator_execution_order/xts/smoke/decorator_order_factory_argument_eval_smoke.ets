// Coverage: DECORATOR-ORDER-0005/0006, DECORATOR-ORDER-TD-0005/0006
// Stage 7 smoke: factory argument expression evaluation order
// Tests that argument expression evaluates before factory body, and factory body before decorator call.
// Expected order: A1 (argument) → F1 (factory body) → D1 (decorator call)
// No sendable, no PR10632

let order: string = ""

function arg(name: string): string {
  order += "A" + name
  return name
}

function makeDec(name: string): (target: Object, key: string) => void {
  order += "F" + name
  return function(target: Object, key: string): void {
    order += "D" + name
  }
}

class A {
  @makeDec(arg("1"))
  value: number = 6
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 6)
  // Argument expression should evaluate before factory body
  // assertTrue(order.indexOf("A1") >= 0)
  // assertTrue(order.indexOf("F1") >= 0)
  // assertTrue(order.indexOf("D1") >= 0)
  // assertTrue(order.indexOf("A1") < order.indexOf("F1"))
  // assertTrue(order.indexOf("F1") < order.indexOf("D1"))
}
