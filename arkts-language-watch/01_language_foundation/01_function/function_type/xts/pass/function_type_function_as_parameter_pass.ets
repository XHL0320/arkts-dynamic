/*
 * Function Stage 3
 * Coverage: function passed as parameter.
 * Expected: callee can invoke the callback parameter.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function applyTwice(value: number, fn: (v: number) => number): number {
  return fn(fn(value))
}

function inc(value: number): number {
  return value + 1
}

function main(): void {
  assertNumberEqual(applyTwice(1, inc), 3, 'function parameter should be callable')
}

main()
