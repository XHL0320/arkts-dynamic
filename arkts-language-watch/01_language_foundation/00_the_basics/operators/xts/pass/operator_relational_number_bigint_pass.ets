/*
 * Operator Stage 1
 * Test point: relational comparison between number and bigint.
 * Expected: 1 < 2n, 2n > 1, comparison is allowed (no TypeError).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 < 2n, 'number less than bigint')
  assertTrue(2n > 1, 'bigint greater than number')
  assertTrue(5n <= 5, 'bigint less than or equal number')
  assertTrue(5 <= 5n, 'number less than or equal bigint')
  assertTrue(3n >= 2, 'bigint greater than or equal number')
}

main()
