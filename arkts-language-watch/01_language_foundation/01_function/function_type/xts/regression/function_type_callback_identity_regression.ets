/*
 * Function Stage 3
 * Coverage: callback identity regression.
 * Expected: the same function value can be returned and called without replacement.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function identity(callback: (value: number) => number): (value: number) => number {
  return callback
}

function plusThree(value: number): number {
  return value + 3
}

function main(): void {
  let callback: (value: number) => number = identity(plusThree)
  assertNumberEqual(callback(4), 7, 'callback identity should remain stable')
}

main()
