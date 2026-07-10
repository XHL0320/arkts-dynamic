/*
 * Declaration Stage 1
 * Test point: const block scope.
 * Expected: inner block const shadows outer const without changing it.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  const value: number = 1
  {
    const value: number = 2
    assertTrue(value === 2, 'inner const should be visible inside block')
  }
  assertTrue(value === 1, 'outer const should remain unchanged')
}

main()
