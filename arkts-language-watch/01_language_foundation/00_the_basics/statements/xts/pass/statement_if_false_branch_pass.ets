/*
 * Statement Stage 1
 * Test point: if false branch does not execute.
 * Expected: when condition is false, the if body is skipped.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

function main(): void {
  let executed: boolean = false
  if (false) {
    executed = true
  }
  assertFalse(executed, 'false branch should not execute')

  let x: number = 5
  if (x > 10) {
    x = 100
  }
  assertTrue(x === 5, 'condition x > 10 is false, body skipped')
}

main()
