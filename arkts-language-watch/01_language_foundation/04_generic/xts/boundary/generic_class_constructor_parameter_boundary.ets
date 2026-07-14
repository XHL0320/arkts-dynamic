/*
 * Case ID: GEN-BOUND-001
 * Coverage ID:
 *   - GEN-CLASS-004
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: class
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic class constructor parameter type boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Wrapper<T> {
  inner: T
  constructor(value: T) {
    this.inner = value
  }
}

function main(): void {
  let w: Wrapper<number> = new Wrapper(77)
  assertTrue(w.inner === 77, 'constructor parameter type matches')
}

main()
