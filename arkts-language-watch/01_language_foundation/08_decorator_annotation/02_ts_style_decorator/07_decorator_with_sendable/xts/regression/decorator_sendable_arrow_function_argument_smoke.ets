function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-SENDABLE-0035, DWS-TD-0035
// Stage 6 regression: sendable class + factory + arrow function argument
// Arrow function passed as decorator factory argument should NOT inherit
// sendable context from the class body.
//
// Expected: arrow function argument returns correct value; property init unchanged
// Bytecode future check: arrow function argument does NOT have sendable function bytecode

function decoratorFactory(cb: () => string): (target: Object, propKey: string) => void {
  let value: string = cb()
  return function(target: Object, propKey: string): void {}
}

class A {
  constructor() {
    "use sendable";
  }
  @decoratorFactory(() => "ok")
  prop: string = "444"
}

function main(): void {
  let a = new A()
  assertTrue(a.prop == "444")
}
