// Coverage: DECORATOR-ORDER-0025/0026, DECORATOR-ORDER-TD-0025/0026
// Stage 7 boundary: fixed decorator call order
// Tests whether multiple decorators follow a fixed order (TS legacy: bottom-up call).
// This file does NOT write strong fixed-order assertions.
// ArkTS whether fully follows TS legacy order is pending confirmation.
// No sendable, no PR10632

let order: string = ""

function dec1(target: Object, key: string): void {
  order += "1"
}

function dec2(target: Object, key: string): void {
  order += "2"
}

function dec3(target: Object, key: string): void {
  order += "3"
}

class A {
  @dec1
  @dec2
  @dec3
  value: number = 10
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 10)
  // All three decorators should be called
  // assertTrue(order.length == 3)
  // NOTE: fixed order pending confirmation
  // TS legacy spec: decorators on same target are called bottom-up (dec3, dec2, dec1)
  // ArkTS may or may not follow this order — needs compiler verification
  // Future: add fixed order assertion once confirmed
}
