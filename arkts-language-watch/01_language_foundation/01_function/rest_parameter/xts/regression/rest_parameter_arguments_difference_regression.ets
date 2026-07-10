/*
 * Function Stage 1
 * Regression candidate.
 * Test point: rest parameter is an array and differs from arguments object identity.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function check(...values: number[]): void {
  assertTrue(values.length === 2, 'rest should collect two values')
  assertTrue(arguments.length === 2, 'arguments should also observe two arguments')
  assertTrue(values !== arguments, 'rest array should not be the arguments object')
}

function main(): void {
  check(1, 2)
}

main()
