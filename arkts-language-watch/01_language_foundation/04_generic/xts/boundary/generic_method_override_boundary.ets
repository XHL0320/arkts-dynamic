/*
 * Case ID: GEN-BOUND-009
 * Coverage ID:
 *   - GEN-METHOD-005
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function, class
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic method override boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Base {
  transform<T>(value: T): T { return value }
}

class Derived extends Base {
  transform<T>(value: T): T { return value }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.transform(42) === 42, 'generic method override works')
}

main()
