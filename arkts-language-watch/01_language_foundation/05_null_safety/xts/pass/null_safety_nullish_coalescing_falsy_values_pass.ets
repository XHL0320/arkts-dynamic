/*
 * Case ID: NULL-PASS-007
 * Coverage ID:
 *   - NS-NC-003
 *   - NS-NC-004
 *   - NS-NC-005
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators
 * Spec Source: pending
 * Description: Verify 0 ??, empty string ??, false ?? preserve original value.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue((0 ?? "fallback") === 0, '0 preserved by ??')
  assertTrue(("" ?? "fallback") === "", 'empty string preserved by ??')
  assertTrue((false ?? "fallback") === false, 'false preserved by ??')

  // Contrast with ||
  assertTrue((0 || "fallback") === "fallback", '0 replaced by ||')
  assertTrue((false || "fallback") === "fallback", 'false replaced by ||')
}

main()