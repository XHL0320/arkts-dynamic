/*
 * Statement Stage 1
 * Test point: for loop with break exits early.
 * Expected: break exits the for loop immediately.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let found: number = -1
  for (let i: number = 0; i < 100; i++) {
    if (i === 5) {
      found = i
      break
    }
  }
  assertTrue(found === 5, 'break should exit when i reaches 5')
}

main()
