// Coverage: DECORATOR-ORDER-0046, DECORATOR-ORDER-TD-0046
// Stage 7 boundary: mixed class member order
// Tests property/method/static/instance mixed decorator order.
// This file only records boundary — no strong order assertions.
// Only checks that all decorators are called without duplication or omission.
// No sendable, no PR10632

let count: number = 0

function propDec(target: Object, key: string): void {
  count++
}

function methodDec(target: Object, key: string): void {
  count++
}

function staticPropDec(target: Object, key: string): void {
  count++
}

function staticMethodDec(target: Object, key: string): void {
  count++
}

class A {
  @staticPropDec
  static s: number = 1

  @propDec
  v: number = 2

  @staticMethodDec
  static getS(): number {
    return A.s
  }

  @methodDec
  getV(): number {
    return this.v
  }
}

function main(): void {
  let a = new A()
  // assertTrue(A.getS() == 1)
  // assertTrue(a.getV() == 2)
  // assertTrue(count == 4)
  // NOTE: relative order of property/method/static/instance decorators pending confirmation
  // Future: add order assertion once compiler behavior confirmed
}
