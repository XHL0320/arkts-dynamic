/*
 * Case ID: INTF-BOUND-012
 * Coverage ID:
 *   - IF-STRUCT-003
 * Feature: interface
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 03_interface
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic interface behavior has not been verified.
 * Description: Verify object literal excess property boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Exact {
  x: number
}

// In TypeScript, { x: 1, y: 2 } would be a compile error (excess property y).
// If dynamic ArkTS allows this, it documents that excess property checking is not strict.
function main(): void {
  let obj: Exact = { x: 1 }
  assertTrue(obj.x === 1, 'exact property match')
  // Excess property boundary documented - if y is added, does it compile?
}

main()
