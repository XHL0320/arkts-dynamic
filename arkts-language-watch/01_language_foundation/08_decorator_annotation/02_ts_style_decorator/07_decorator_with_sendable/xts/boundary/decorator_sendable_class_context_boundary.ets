// Coverage: DECORATOR-SENDABLE-0006, DECORATOR-SENDABLE-0007, DWS-TD-0006, DWS-TD-0007
// Stage 6 boundary: sendable class context vs decorator-lowered context separation
//
// This file tests the boundary between:
//   - sendable class body context (should have sendable bytecode)
//   - decorator-lowered function context (should NOT have sendable bytecode)
//
// No strong bytecode assertions in this file — this is a source boundary candidate.
// Future bytecode expected check points:
//   1. class A body has sendable class bytecode
//   2. decoratorFactory return function does NOT have sendable function bytecode
//   3. arrow function argument does NOT have sendable function bytecode
//   4. method() body has sendable method bytecode (inside sendable class)
//   5. decorator call site (after lowering) is outside class — NOT sendable context

function decoratorFactory(v: string): (target: Object, propKey: string) => void {
  return function(target: Object, propKey: string): void {}
}

class A {
  constructor() {
    "use sendable";
  }
  @decoratorFactory("arg")
  prop: string = "boundary"

  method(): string {
    return "method_result"
  }
}

function main(): void {
  let a = new A()
  // assertTrue(a.prop == "boundary")
  // assertTrue(a.method() == "method_result")
}
