// Coverage: DECORATOR-ORDER-0029, DECORATOR-ORDER-TD-0029
// Stage 7 boundary: class decorator return value order
// Tests how class decorator return value affects subsequent decorator calls.
// Return value semantics (void, original class, new class) are pending.
// This file records the order-related boundary only.
// Return value semantics themselves belong to 01_class_decorator boundary.
// No sendable, no PR10632

// NOTE: This boundary file documents the scenario.
// Class decorator return value behavior is pending confirmation.
//
// Questions to confirm:
//   1. If class decorator returns void, does the next decorator receive the original class?
//   2. If class decorator returns a new class, does the next decorator receive the new class?
//   3. Does ArkTS treat class decorator return value differently from TS?
//   4. This boundary is ORDER-related only; return value semantics belong to 01_class_decorator.

function classDec1(target: Object): void {
  // Returns void — original class should be passed to next decorator
}

function classDec2(target: Object): void {
  // Receives target — should be the same as what classDec1 received if return is void
}

@classDec1
@classDec2
class A {
  value: number = 13
}

function main(): void {
  let a = new A()
  // assertTrue(a.value == 13)
  // Both class decorators are called
  // NOTE: class decorator return value and its effect on next decorator pending confirmation
}
