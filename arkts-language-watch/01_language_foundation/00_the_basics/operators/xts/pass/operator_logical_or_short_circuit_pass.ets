/*
 * Operator Stage 1
 * Test point: logical OR short-circuit evaluation.
 * Expected: true || expr does not evaluate expr.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: boolean = false
  let result: boolean = true || (sideEffect = true)
  assertFalse(sideEffect, 'right side should not be evaluated when left is true')
  assertTrue(result, 'result should be true')
  assertTrue(false || true === true, 'false || true is true')
  assertTrue(false || false === false, 'false || false is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
