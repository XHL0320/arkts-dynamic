/*
 * Statement Stage 1
 * Test point: continue with label jumps to outer loop next iteration.
 * Expected: continue label skips to the next iteration of the labelled loop.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  outer: for (let i: number = 0; i < 3; i++) {
    for (let j: number = 0; j < 3; j++) {
      if (j === 1) {
        continue outer
      }
      count++
    }
  }
  assertTrue(count === 3, 'continue outer should skip j=1 for each i, count=3')
}

main()
