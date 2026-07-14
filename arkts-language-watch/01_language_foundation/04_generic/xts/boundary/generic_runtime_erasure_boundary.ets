/*
 * Case ID: GEN-BOUND-011
 * Coverage ID:
 *   - GEN-RT-001
 *   - GEN-RT-005
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic runtime erasure behavior boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class GenericBox<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function main(): void {
  let box: GenericBox<number> = new GenericBox(42)
  // At runtime, GenericBox<number> is just GenericBox (T is erased).
  // typeof box should be "object", not "GenericBox<number>".
  assertTrue(typeof box === "object", 'generic type erased at runtime')
  assertTrue(box.value === 42, 'value still accessible after erasure')
}

main()
