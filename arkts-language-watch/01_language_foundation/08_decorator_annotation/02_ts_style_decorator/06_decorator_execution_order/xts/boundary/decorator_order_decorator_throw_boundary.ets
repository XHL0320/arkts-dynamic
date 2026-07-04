// Coverage: DECORATOR-ORDER-0010, DECORATOR-ORDER-TD-0010
// Stage 7 boundary: decorator throw order
// Tests decorator function call throw boundary.
// When a decorator function throws during call, subsequent decorator behavior is pending.
// This file records the boundary only — NOT a pass test, NOT fail_compile.
// No sendable, no PR10632

// NOTE: This boundary file documents the scenario but may not be executable
// in current XTS framework. Runtime throw behavior is pending confirmation.
//
// Scenario: decorator function throws during call
// Questions to confirm:
//   1. Does the throw prevent subsequent decorator calls?
//   2. Does the throw prevent the class from being defined?
//   3. Is the throw caught at class definition time or at instantiation time?
//   4. If multiple decorators exist, does the first throw prevent the second?
//
// This file is a boundary record. Do NOT mark as pass.

function throwingDec(target: Object, key: string): void {
  // throw new Error("decorator throw")  // Not executable in current XTS
}

class A {
  @throwingDec
  value: number = 12
}

function main(): void {
  // Boundary: decorator function throw behavior pending
  // If throw is uncommented, runtime behavior needs confirmation
}
