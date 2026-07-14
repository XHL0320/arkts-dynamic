/*
 * Case ID: NULL-BOUND-005
 * Coverage ID:
 *   - NS-GEN-001
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: generic, typescript_compatibility
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify NonNullable<T> utility type boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function process<T>(value: NonNullable<T>): T {
  return value
}

function main(): void {
  let result: number = process<number>(42)
  assertTrue(result === 42, 'NonNullable accepts non-null value')
}

main()