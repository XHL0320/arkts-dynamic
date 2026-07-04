function assertTrue(condition: boolean): void {
  if (!condition) {
    throw new Error("assertTrue failed")
  }
}

// Coverage: DECORATOR-SENDABLE-0001, DWS-TD-0001
// Stage 6 regression: PR 10632 local-binding source candidate.
// Status: source candidate created (not completed; no real bytecode expected).
//
// This is NOT the full PR10632 original imported-binding repro.
// This is a local-binding degraded source candidate.
// Full imported-binding version remains compiler/bytecode candidate only.
//
// PR 10632 root cause:
//   sendable class property decorator â†?TS transformer lowers decorator call outside class body
//   â†?original and lowered AST nodes share ScriptFunction pointer
//   â†?binder marks decorator argument functions as inSendable=true inside class context
//   â†?class-external decorator node is NOT in sendable scope but retains inSendable state
//   â†?codegen generates sendable-specific bytecode for non-sendable context
//
// NOTE: Full PR 10632 requires imported binding (multi-file XTS).
//       This file uses same-file local binding as degraded smoke.
//       Imported binding version is a compiler_expected candidate only.

let localVar: string = "local"

function decoratorFactory(v: string): (target: Object, propKey: string) => void {
  return function(target: Object, propKey: string): void {
    // Property decorator returned by factory with IIFE argument
  }
}

class A {
  constructor() {
    "use sendable";
  }
  @decoratorFactory((() => { return localVar })())
  prop: string = "111"
}

function main(): void {
  let a = new A()
  assertTrue(a.prop == "111")
}
