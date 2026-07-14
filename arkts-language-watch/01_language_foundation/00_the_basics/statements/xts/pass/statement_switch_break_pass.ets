/*
 * Case ID: STMT-PASS-017
 * Coverage ID:
 *   - STMT-SWITCH-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify switch with break stops fall-through.. break exits the switch after matching case.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  let x: number = 2
  switch (x) {
    case 1: log += "1"; break
    case 2: log += "2"; break
    case 3: log += "3"; break
    default: log += "D"
  }
  assertTrue(log === "2", 'break should stop after matching case')
}

main()
