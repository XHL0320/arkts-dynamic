/*
 * Operator Stage 1
 * Test point: prefix increment.
 * Expected: ++x returns the new value and increments before returning.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 5
  let result: number = ++x
  assertTrue(result === 6, 'prefix increment returns new value')
  assertTrue(x === 6, 'x is incremented')
  let y: number = 0
  ++y
  assertTrue(y === 1, 'y incremented to 1')
  let z: number = -3
  ++z
  assertTrue(z === -2, 'z incremented from -3 to -2')
}

main()
