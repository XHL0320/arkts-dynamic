/*
 * Case ID: KEYW-PASS-011
 * Coverage ID:
 *   - KW-LIT-001
 *   - KW-LIT-002
 *   - KW-LIT-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify true/false/null literal keywords.. true/false/null keywords work as literal values.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let t: boolean = true
  let f: boolean = false
  let n: null = null
  assertTrue(t === true, 'true literal keyword works')
  assertTrue(f === false, 'false literal keyword works')
  assertTrue(n === null, 'null literal keyword works')
}

main()
