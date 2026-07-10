/*
 * Statement Stage 1
 * Test point: while loop with break exits early.
 * Expected: break exits the while loop immediately.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  while (true) {
    if (count >= 3) {
      break
    }
    count++
  }
  assertTrue(count === 3, 'break should exit when count reaches 3')
}

main()
