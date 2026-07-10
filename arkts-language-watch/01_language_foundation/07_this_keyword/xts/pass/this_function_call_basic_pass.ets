/*
 * This Keyword Stage 1
 * Test point: function call this binding (strict mode).
 * Expected: in strict mode, `this` in plain function call is undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function plainFunction(): Object | undefined {
  return this
}

function main(): void {
  let result: Object | undefined = plainFunction()
  // In module/strict mode, `this` should be undefined.
  // If not strict, it would be globalThis.
  assertTrue(result === undefined || result === globalThis, 'function call this is undefined or globalThis')
}

main()
