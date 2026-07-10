/*
 * Null Safety Stage 1
 * Test point: function without return returns undefined.
 * Expected: function with no return statement returns undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function noReturn(): void {
  let x: number = 1 + 1
}

function explicitUndefined(): undefined {
  return undefined
}

function main(): void {
  let result: void = noReturn()
  assertTrue(result === undefined, 'function without return returns undefined')
  let explicit: undefined = explicitUndefined()
  assertTrue(explicit === undefined, 'explicit return undefined')
}

main()
