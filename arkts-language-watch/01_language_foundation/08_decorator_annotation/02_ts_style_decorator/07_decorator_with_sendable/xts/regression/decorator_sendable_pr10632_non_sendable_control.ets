// Coverage: DECORATOR-SENDABLE-0010, DWS-TD-0010
// Stage 6 regression: non-sendable class + factory + IIFE (control for PR 10632)
// This is the control comparison — same decorator pattern but without sendable class.
// Should NOT generate sendable-specific bytecode in compiler output.
//
// Expected: property init value unchanged; IIFE evaluates correctly
// Bytecode future check: NO sendable-specific bytecode in any generated code

let localVar: string = "local"

function decoratorFactory(v: string): (target: Object, propKey: string) => void {
  return function(target: Object, propKey: string): void {}
}

class A {
  @decoratorFactory((() => { return localVar })())
  prop: string = "555"
}

function main(): void {
  let a = new A()
  // assertTrue(a.prop == "555")
}
