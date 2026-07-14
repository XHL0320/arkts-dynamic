/*
 * Case ID: STMT-PASS-019
 * Coverage ID:
 *   - STMT-SWITCH-002
 *   - STMT-SWITCH-005
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify switch default executes when no case matches.. default branch runs when no case matches.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: string = ""
  let x: number = 99
  switch (x) {
    case 1: result = "one"; break
    case 2: result = "two"; break
    default: result = "default"
  }
  assertTrue(result === "default", 'default should execute when no case matches')
}

main()
