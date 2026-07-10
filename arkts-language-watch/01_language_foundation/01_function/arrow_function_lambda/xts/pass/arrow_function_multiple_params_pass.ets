/*
 * Function Stage 2
 * Coverage: arrow function with multiple parameters.
 * Expected: all parameters are bound in order.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let calc: (a: number, b: number, c: number) => number = (a: number, b: number, c: number): number => a + b * c
  assertNumberEqual(calc(1, 2, 3), 7, 'multiple parameter arrow should bind arguments in order')
}

main()
