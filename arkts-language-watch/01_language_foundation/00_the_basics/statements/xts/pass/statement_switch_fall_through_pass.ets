/*
 * Case ID: STMT-PASS-020
 * Coverage ID:
 *   - STMT-SWITCH-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify switch fall-through without break.. after matching a case, execution continues to next case if no break.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  let x: number = 1
  switch (x) {
    case 1: log += "1"
    case 2: log += "2"
    case 3: log += "3"
    default: log += "D"
  }
  assertTrue(log === "123D", 'fall-through should execute all cases after match')
}

main()
