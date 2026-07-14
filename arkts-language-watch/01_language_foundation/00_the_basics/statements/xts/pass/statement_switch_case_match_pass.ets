/*
 * Case ID: STMT-PASS-018
 * Coverage ID:
 *   - STMT-SWITCH-001
 *   - STMT-SWITCH-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify switch case match executes matching case.. case value matched with strict equality executes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function dayName(day: number): string {
  switch (day) {
    case 1: return "Mon"
    case 2: return "Tue"
    case 3: return "Wed"
    default: return "Other"
  }
}

function main(): void {
  assertTrue(dayName(1) === "Mon", 'case 1 matches')
  assertTrue(dayName(2) === "Tue", 'case 2 matches')
  assertTrue(dayName(3) === "Wed", 'case 3 matches')
  assertTrue(dayName(5) === "Other", 'default matches')
}

main()
