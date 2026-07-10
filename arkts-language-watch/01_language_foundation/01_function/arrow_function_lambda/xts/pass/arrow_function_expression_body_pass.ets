/*
 * Function Stage 2
 * Coverage: arrow function expression body.
 * Expected: expression body value is returned.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let addOne: (value: number) => number = (value: number): number => value + 1
  assertNumberEqual(addOne(4), 5, 'arrow expression body should return expression value')
}

main()
