/*
 * Keyword Stage 1
 * Test point: break/continue keywords in valid loop positions.
 * Expected: break/continue keywords work as jump statements inside loops.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 10; i++) {
    if (i === 3) { break }
    sum += i
  }
  assertTrue(sum === 3, 'break keyword works (0+1+2=3)')

  let total: number = 0
  for (let i: number = 0; i < 5; i++) {
    if (i === 2) { continue }
    total += i
  }
  assertTrue(total === 8, 'continue keyword works (0+1+3+4=8)')
}

main()
