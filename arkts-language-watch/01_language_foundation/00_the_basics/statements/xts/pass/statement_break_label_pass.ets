/*
 * Case ID: STMT-PASS-002
 * Coverage ID:
 *   - STMT-BREAK-003
 *   - STMT-LABEL-001
 *   - STMT-LABEL-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify break with label exits outer loop.. break label jumps out of the labelled loop.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  outer: for (let i: number = 0; i < 5; i++) {
    for (let j: number = 0; j < 5; j++) {
      if (i === 2 && j === 2) {
        break outer
      }
      count++
    }
  }
  assertTrue(count === 12, 'break outer should exit both loops at i=2,j=2 (count=0*5+1*5+2*2+2=12... actually 5+5+2=12)')
}

main()
