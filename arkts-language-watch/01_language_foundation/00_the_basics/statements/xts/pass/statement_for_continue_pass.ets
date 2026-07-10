/*
 * Statement Stage 1
 * Test point: for loop with continue skips current iteration.
 * Expected: continue jumps to update, skipping remaining body.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 5; i++) {
    if (i === 2) {
      continue
    }
    sum += i
  }
  assertTrue(sum === 10, 'sum should be 0+1+3+4=10 (skipping 2)')
}

main()
