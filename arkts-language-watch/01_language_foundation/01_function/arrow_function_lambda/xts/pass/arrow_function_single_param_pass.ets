/*
 * Function Stage 2
 * Coverage: arrow function with a single parameter.
 * Expected: single parameter is bound correctly.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let wrap: (value: string) => string = (value: string): string => '[' + value + ']'
  assertStringEqual(wrap('x'), '[x]', 'single parameter arrow should bind argument')
}

main()
