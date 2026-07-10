/*
 * Function Stage 2
 * Coverage: closure updates outer variable.
 * Expected: repeated calls observe the same captured binding.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createCounter(): () => number {
  let count: number = 0
  return function(): number {
    count = count + 1
    return count
  }
}

function main(): void {
  let next: () => number = createCounter()
  assertNumberEqual(next(), 1, 'first closure update')
  assertNumberEqual(next(), 2, 'second closure update')
}

main()
