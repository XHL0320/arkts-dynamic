/*
 * Declaration Stage 1
 * Test point: var declaration hoisting.
 * Expected: reading a var binding before its declaration returns undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(value === undefined, 'var binding should be undefined before assignment')
  var value: number = 1
  assertTrue(value === 1, 'var binding should hold assigned value')
}

main()
