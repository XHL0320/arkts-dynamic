/*
 * Statement Stage 1
 * Test point: if true branch executes.
 * Expected: when condition is true, the if body executes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let executed: boolean = false
  if (true) {
    executed = true
  }
  assertTrue(executed, 'true branch should execute')

  let x: number = 5
  if (x > 0) {
    x = 10
  }
  assertTrue(x === 10, 'condition x > 0 is true, body executes')
}

main()
