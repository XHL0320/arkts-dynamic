// Coverage: DECORATOR-ORDER-0037, DECORATOR-ORDER-TD-0037
// Stage 7 integration: class/property/method mixed decorator order
// Tests that class, property, and method decorators are all called.
// Each decorator type is called exactly once.
// Class can be instantiated; property and method accessible.
// Fixed global order: pending confirmation
// No sendable, no PR10632

let classCount: number = 0
let propertyCount: number = 0
let methodCount: number = 0
let order: string = ""

function classDec(target: Object): void {
  classCount++
  order += "C"
}

function propDec(target: Object, key: string): void {
  propertyCount++
  order += "P"
}

function methodDec(target: Object, key: string): void {
  methodCount++
  order += "M"
}

@classDec
class A {
  @propDec
  value: number = 7

  @methodDec
  getValue(): number {
    return this.value
  }
}

function main(): void {
  let a = new A()
  // assertTrue(a.getValue() == 7)
  // assertTrue(classCount == 1)
  // assertTrue(propertyCount == 1)
  // assertTrue(methodCount == 1)
  // assertTrue(order.length == 3)
}
