/*
 * Function Stage 3
 * Coverage: function stored as a value.
 * Expected: function value can be assigned to a variable and called.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function add(a: number, b: number): number {
  return a + b
}

function main(): void {
  let fn: (a: number, b: number) => number = add
  assertNumberEqual(fn(2, 3), 5, 'function value should be callable')
}

main()
