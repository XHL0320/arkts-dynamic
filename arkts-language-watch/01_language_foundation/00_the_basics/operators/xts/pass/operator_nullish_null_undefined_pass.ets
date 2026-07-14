/*
 * Case ID: OPER-PASS-018
 * Coverage ID:
 *   - OP-NULLISH-COALESCING-001
 *   - OP-NULLISH-COALESCING-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nullish coalescing for null and undefined.. null ?? "default" === "default", undefined ?? "default" === "default".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(null ?? "default" === "default", 'null ?? default')
  assertTrue(undefined ?? "default" === "default", 'undefined ?? default')
  assertTrue(0 ?? "default" === 0, 'zero is preserved by ??')
  assertTrue(false ?? "default" === false, 'false is preserved by ??')
  assertTrue("" ?? "default" === "", 'empty string is preserved by ??')
}

main()
