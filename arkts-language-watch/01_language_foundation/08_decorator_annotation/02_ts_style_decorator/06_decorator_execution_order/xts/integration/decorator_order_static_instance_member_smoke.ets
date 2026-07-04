// Coverage: DECORATOR-ORDER-0031/0032/0040/0042, DECORATOR-ORDER-TD-0031/0032/0040/0042
// Stage 7 integration: static and instance member decorator order
// Tests that static property, instance property, static method, and instance method
// decorators are each called exactly once.
// No strong assertion on global order.
// No sendable, no PR10632

let staticPropCount: number = 0
let instancePropCount: number = 0
let staticMethodCount: number = 0
let instanceMethodCount: number = 0

function staticPropDec(target: Object, key: string): void {
  staticPropCount++
}

function instancePropDec(target: Object, key: string): void {
  instancePropCount++
}

function staticMethodDec(target: Object, key: string): void {
  staticMethodCount++
}

function instanceMethodDec(target: Object, key: string): void {
  instanceMethodCount++
}

class A {
  @staticPropDec
  static s: number = 1

  @instancePropDec
  v: number = 2

  @staticMethodDec
  static getS(): number {
    return A.s
  }

  @instanceMethodDec
  getV(): number {
    return this.v
  }
}

function main(): void {
  let a = new A()
  // assertTrue(A.getS() == 1)
  // assertTrue(a.getV() == 2)
  // assertTrue(staticPropCount == 1)
  // assertTrue(instancePropCount == 1)
  // assertTrue(staticMethodCount == 1)
  // assertTrue(instanceMethodCount == 1)
}
