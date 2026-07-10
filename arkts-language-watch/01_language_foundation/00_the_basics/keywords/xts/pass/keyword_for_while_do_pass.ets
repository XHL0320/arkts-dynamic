/*
 * Keyword Stage 1
 * Test point: for/while/do keywords in valid positions.
 * Expected: for/while/do keywords work as loop statements.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sum: number = 0
  for (let i: number = 0; i < 3; i++) { sum += i }
  assertTrue(sum === 3, 'for keyword works')

  let count: number = 0
  while (count < 3) { count++ }
  assertTrue(count === 3, 'while keyword works')

  let n: number = 0
  do { n++ } while (n < 1)
  assertTrue(n === 1, 'do keyword works')
}

main()
