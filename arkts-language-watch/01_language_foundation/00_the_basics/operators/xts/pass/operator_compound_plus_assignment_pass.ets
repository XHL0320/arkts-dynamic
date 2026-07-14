/*
 * Case ID: OPER-PASS-005
 * Coverage ID:
 *   - OP-COMPOUND-ASSIGNMENT-001
 *   - OP-COMPOUND-ASSIGNMENT-002
 *   - OP-COMPOUND-ASSIGNMENT-003
 *   - OP-COMPOUND-ASSIGNMENT-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify compound assignment +=.. x += 5 is equivalent to x = x + 5.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 10
  x += 5
  assertTrue(x === 15, 'plus assignment number')
  let s: string = "hello"
  s += " world"
  assertTrue(s === "hello world", 'plus assignment string concat')
  let y: number = 3
  y -= 1
  assertTrue(y === 2, 'minus assignment')
  let z: number = 4
  z *= 3
  assertTrue(z === 12, 'multiply assignment')
}

main()
