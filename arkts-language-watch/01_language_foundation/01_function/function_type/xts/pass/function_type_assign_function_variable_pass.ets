/*
 * Function Stage 3
 * Coverage: function variable reassignment.
 * Expected: a function-typed variable can point to another compatible function value.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function addOne(value: number): number {
  return value + 1
}

function addTwo(value: number): number {
  return value + 2
}

function main(): void {
  let fn: (value: number) => number = addOne
  assertNumberEqual(fn(1), 2, 'first function assignment')
  fn = addTwo
  assertNumberEqual(fn(1), 3, 'second function assignment')
}

main()
