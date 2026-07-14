/*
 * Case ID: NULL-BOUND-002
 * Coverage ID:
 *   - NS-GEN-002
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: generic
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify generic nullable type T|null boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Result<T> {
  value: T | null
  constructor(v: T | null) { this.value = v }
}

function main(): void {
  let r: Result<number> = new Result(42)
  assertTrue(r.value === 42, 'generic nullable holds value')

  let nullResult: Result<string> = new Result(null)
  assertTrue(nullResult.value === null, 'generic nullable holds null')
}

main()