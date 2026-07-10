/*
 * Function Stage 3
 * Coverage: basic callback execution.
 * Expected: callback receives argument and returns a value to caller.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function run(value: number, callback: (value: number) => number): number {
  return callback(value)
}

function main(): void {
  let result: number = run(4, function(value: number): number {
    return value * 2
  })
  assertNumberEqual(result, 8, 'callback should execute with argument')
}

main()
