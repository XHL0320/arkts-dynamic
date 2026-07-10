/*
 * Operator Stage 1
 * Test point: logical AND short-circuit evaluation.
 * Expected: false && expr does not evaluate expr.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let sideEffect: boolean = false
  let result: boolean = false && (sideEffect = true)
  assertFalse(sideEffect, 'right side should not be evaluated when left is false')
  assertFalse(result, 'result should be false')
  assertTrue(true && true === true, 'true && true is true')
  assertTrue(true && false === false, 'true && false is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
