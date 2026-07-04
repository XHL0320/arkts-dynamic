// Coverage: DECORATOR-ORDER-0011, DECORATOR-ORDER-TD-0011
// Stage 7 boundary: factory throw order
// Tests factory evaluation throw boundary.
// When a factory throws during evaluation, subsequent decorator behavior is pending.
// This file records the boundary only — NOT a pass test, NOT fail_compile.
// If runtime throw cases are not suitable for current XTS, this is a boundary record.
// No sendable, no PR10632

// NOTE: This boundary file documents the scenario but may not be executable
// in current XTS framework. Runtime throw behavior is pending confirmation.
//
// Scenario: decorator factory throws during evaluation
// Questions to confirm:
//   1. Does the throw prevent subsequent decorator evaluation?
//   2. Does the throw prevent the class from being defined?
//   3. Is the throw caught at class definition time or at instantiation time?
//   4. Does ArkTS runtime handle decorator factory throw differently from TS?
//
// This file is a boundary record. Do NOT mark as pass.

function throwingFactory(): (target: Object, key: string) => void {
  // throw new Error("factory throw")  // Not executable in current XTS
  return function(target: Object, key: string): void {}
}

class A {
  @throwingFactory()
  value: number = 11
}

function main(): void {
  // Boundary: factory throw behavior pending
  // If throw is uncommented, runtime behavior needs confirmation
}
