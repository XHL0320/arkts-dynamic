/*
 * Operator Stage 1
 * Test point: postfix increment.
 * Expected: x++ returns the old value and increments after returning.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 5
  let result: number = x++
  assertTrue(result === 5, 'postfix increment returns old value')
  assertTrue(x === 6, 'x is incremented after')
  let y: number = 0
  let old: number = y++
  assertTrue(old === 0, 'postfix on zero returns old value')
  assertTrue(y === 1, 'y is now 1')
}

main()
