/*
 * Function Stage 3
 * Coverage: nested callback execution.
 * Expected: callbacks can be composed through nested function calls.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(value: number, callback: (value: number) => number): number {
  function inner(input: number): number {
    return callback(input) + 1
  }
  return inner(value)
}

function main(): void {
  let result: number = outer(5, function(value: number): number {
    return value + 2
  })
  assertNumberEqual(result, 8, 'nested callback should preserve call flow')
}

main()
