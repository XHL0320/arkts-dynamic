function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-SENDABLE-0005, DWS-TD-0005
// Stage 6 regression: sendable class + factory + IIFE capturing local binding
// This is NOT the complete PR 10632 shape (missing imported binding), but tests
// the IIFE + local binding interaction within a sendable class context.
//
// Expected: property init value unchanged; IIFE evaluates correctly
// Bytecode future check: IIFE function should NOT have sendable bytecode

let capturedBinding: string = "captured"

function decoratorFactory(v: string): (target: Object, propKey: string) => void {
  return function(target: Object, propKey: string): void {}
}

class A {
  constructor() {
    "use sendable";
  }
  @decoratorFactory((() => { return capturedBinding })())
  prop: string = "333"
}

function main(): void {
  let a = new A()
  assertTrue(a.prop == "333")
}
