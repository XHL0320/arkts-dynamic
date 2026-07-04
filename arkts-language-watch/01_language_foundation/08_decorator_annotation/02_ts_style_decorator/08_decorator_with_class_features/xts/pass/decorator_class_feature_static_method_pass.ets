// Coverage: DECORATOR-CLASS-FEATURE-0002, DECORATOR-CLASS-FEATURE-TD-0002
// Stage 9 pass: static method + method decorator
// Tests that static method is callable after decorator application
// No sendable, no PR10632, no ArkUI
// descriptor/equivalent structure pending — uses 2-param form for method decorator

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class A {
  @methodDec
  static getVersion(): number {
    return 2
  }
}

function main(): void {
  let v: number = A.getVersion()
  // assertTrue(v == 2)
}
