/*
 * Case ID: NULL-BOUND-004
 * Coverage ID:
 *   - NS-NNA-001
 *   - NS-NNA-002
 *   - NS-NNA-003
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: typescript_compatibility
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify non-null assertion value! boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let val: number | null = 42
  let nonNull: number = val!
  assertTrue(nonNull === 42, 'non-null assertion on non-null value')

  // If val were actually null, the ! assertion would not prevent runtime error.
  // The assertion is a compile-time hint, erased at runtime.
}

main()