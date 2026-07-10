/*
 * Null Safety Stage 1
 * Test point: function returning null.
 * Expected: function can explicitly return null.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function getNull(): null {
  return null
}

function maybeNull(x: number): number | null {
  if (x < 0) { return null }
  return x
}

function main(): void {
  let n: null = getNull()
  assertTrue(n === null, 'function returns null')
  assertTrue(maybeNull(42) === 42, 'function returns value when positive')
  assertTrue(maybeNull(-1) === null, 'function returns null when negative')
}

main()
