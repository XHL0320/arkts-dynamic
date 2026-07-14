/*
 * Case ID: STMT-PASS-011
 * Coverage ID:
 *   - STMT-FOR-001
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify for loop init/condition/update execution order.. init once, then cond→body→update→cond→body→update...
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  for (let i: number = 0; i < 3; i++) {
    log += i.toString()
  }
  assertTrue(log === "012", 'for loop should iterate 3 times: 0,1,2')

  let count: number = 0
  let initExecuted: boolean = false
  for (let j: number = (initExecuted = true, 0); j < 2; j++) {
    count++
  }
  assertTrue(initExecuted, 'init should execute once')
  assertTrue(count === 2, 'body should execute 2 times')
}

main()
