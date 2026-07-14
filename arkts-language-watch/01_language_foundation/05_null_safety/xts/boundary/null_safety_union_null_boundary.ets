/*
 * Case ID: NULL-BOUND-008
 * Coverage ID:
 *   - NS-UNION-001
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify union type with null runtime behavior boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function maybeValue(x: boolean): string | null {
  if (x) { return "found" }
  return null
}

function main(): void {
  assertTrue(maybeValue(true) === "found", 'union with null returns value')
  assertTrue(maybeValue(false) === null, 'union with null returns null')
}

main()