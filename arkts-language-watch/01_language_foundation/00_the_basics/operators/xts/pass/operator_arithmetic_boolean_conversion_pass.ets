/*
 * Operator Stage 1
 * Test point: boolean numeric conversion in arithmetic.
 * Expected: true + true === 2, false + 1 === 1.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(true + true === 2, 'true converts to 1')
  assertTrue(false + 1 === 1, 'false converts to 0')
  assertTrue(true * 3 === 3, 'true multiplied')
  assertTrue(false * 5 === 0, 'false multiplied')
}

main()
