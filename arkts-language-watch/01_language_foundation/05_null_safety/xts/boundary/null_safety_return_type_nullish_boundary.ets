/*
 * Case ID: NULL-BOUND-007
 * Coverage ID:
 *   - NS-RET-004
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: function
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify return type with nullish union boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function find(id: number): string | null {
  if (id === 1) { return "one" }
  if (id === 2) { return "two" }
  return null
}

function main(): void {
  assertTrue(find(1) === "one", 'returns value for id 1')
  assertTrue(find(2) === "two", 'returns value for id 2')
  assertTrue(find(99) === null, 'returns null for unknown id')
}

main()