function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-SENDABLE-0009, DWS-TD-0009
// Stage 6 smoke: sendable class + property decorator basic
// Expected: property init value unchanged after decorator application
// Bytecode future check: class body has sendable bytecode; decorator function does NOT have sendable bytecode

function dec(target: Object, key: string): void {
  // Simple property decorator â€?no modification to target/key
}

class A {
  constructor() {
    "use sendable";
  }
  @dec
  prop: string = "111"
}

function main(): void {
  let a = new A()
  assertTrue(a.prop == "111")
}
