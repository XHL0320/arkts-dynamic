/*
 * Case ID: GEN-BOUND-010
 * Coverage ID:
 *   - GEN-ARR-002
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify Record-like generic object boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface StringMap<V> {
  [key: string]: V
}

function main(): void {
  let map: StringMap<number> = { "a": 1, "b": 2 }
  assertTrue(map["a"] === 1, 'Record-like object access a')
  assertTrue(map["b"] === 2, 'Record-like object access b')
}

main()
