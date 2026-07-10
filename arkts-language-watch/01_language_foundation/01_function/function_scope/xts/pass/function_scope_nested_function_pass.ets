/*
 * Function Stage 2
 * Coverage: nested function reads outer function variable.
 * Expected: nested function resolves the outer lexical environment.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(): number {
  let base: number = 3
  function inner(): number {
    return base + 4
  }
  return inner()
}

function main(): void {
  assertNumberEqual(outer(), 7, 'nested function should read outer binding')
}

main()
