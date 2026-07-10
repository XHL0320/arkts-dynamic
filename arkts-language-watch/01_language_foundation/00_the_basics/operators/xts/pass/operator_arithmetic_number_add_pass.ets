/*
 * Operator Stage 1
 * Test point: number addition.
 * Expected: 1 + 2 === 3.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 + 2 === 3, 'number addition should return 3')
  assertTrue(0 + 0 === 0, 'zero addition')
  assertTrue(-1 + 1 === 0, 'negative plus positive')
  assertTrue(3.5 + 1.5 === 5, 'float addition')
}

main()
