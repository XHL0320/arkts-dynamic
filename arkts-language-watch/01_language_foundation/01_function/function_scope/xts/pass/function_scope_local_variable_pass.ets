/*
 * Function Stage 2
 * Coverage: function local variable scope.
 * Expected: local variables are readable inside the function body.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function readLocal(): number {
  let value: number = 10
  return value
}

function main(): void {
  assertNumberEqual(readLocal(), 10, 'local variable should be visible inside function')
}

main()
