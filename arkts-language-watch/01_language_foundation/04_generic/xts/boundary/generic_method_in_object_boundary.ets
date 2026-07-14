/*
 * Case ID: GEN-BOUND-008
 * Coverage ID:
 *   - GEN-METHOD-004
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: function
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic method in object literal boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let obj = {
  identity<T>(value: T): T { return value }
}

function main(): void {
  let result: number = obj.identity(42)
  assertTrue(result === 42, 'object method generic works')
}

main()
