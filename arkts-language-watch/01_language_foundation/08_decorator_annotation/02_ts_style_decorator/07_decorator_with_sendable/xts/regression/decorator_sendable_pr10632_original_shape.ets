// Coverage: DECORATOR-SENDABLE-0001, DWS-TD-0001
// Stage 6 regression: PR 10632 original shape — sendable class + property decorator + factory + IIFE + binding
// Status: source candidate created (not completed — no real bytecode expected)
//
// PR 10632 root cause:
//   sendable class property decorator → TS transformer lowers decorator call outside class body
//   → original and lowered AST nodes share ScriptFunction pointer
//   → binder marks decorator argument functions as inSendable=true inside class context
//   → class-external decorator node is NOT in sendable scope but retains inSendable state
//   → codegen generates sendable-specific bytecode for non-sendable context
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
  // assertTrue(a.prop == "111")
}
