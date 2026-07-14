/*
 * Case ID: KEYW-PASS-009
 * Coverage ID:
 *   - KW-STMT-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify switch/case/default keywords in valid positions.. switch/case/default keywords work as multi-branch statement.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 2
  let result: string = ""
  switch (x) {
    case 1: result = "one"; break
    case 2: result = "two"; break
    default: result = "other"
  }
  assertTrue(result === "two", 'switch/case/default keywords work')
}

main()
