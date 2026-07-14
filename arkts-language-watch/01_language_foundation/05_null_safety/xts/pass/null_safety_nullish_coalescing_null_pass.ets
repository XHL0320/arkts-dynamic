/*
 * Case ID: NULL-PASS-008
 * Coverage ID:
 *   - NS-NC-001
 *   - NS-NC-002
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Description: Verify null ?? fallback and undefined ?? fallback return fallback.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue((null ?? "fallback") === "fallback", 'null ?? fallback')
  assertTrue((undefined ?? "fallback") === "fallback", 'undefined ?? fallback')
  assertTrue((null ?? 42) === 42, 'null ?? number')
  assertTrue((undefined ?? null) === null, 'undefined ?? null returns null')
}

main()