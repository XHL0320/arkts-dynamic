/*
 * Statement Stage 1
 * Test point: for loop basic execution.
 * Expected: init, condition, body, update execute in correct order.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 5; i++) {
    sum += i
  }
  assertTrue(sum === 10, 'sum should be 0+1+2+3+4=10')
}

main()
