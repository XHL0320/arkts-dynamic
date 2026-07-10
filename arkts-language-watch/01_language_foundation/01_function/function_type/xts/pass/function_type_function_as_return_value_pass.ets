/*
 * Function Stage 3
 * Coverage: function returned as value.
 * Expected: returned function can be stored and called.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function makePrefixer(prefix: string): (value: string) => string {
  return function(value: string): string {
    return prefix + value
  }
}

function main(): void {
  let prefix: (value: string) => string = makePrefixer('ark')
  assertStringEqual(prefix('ts'), 'arkts', 'returned function should be callable')
}

main()
