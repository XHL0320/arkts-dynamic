/*
 * Function Stage 2
 * Coverage: arrow function block body.
 * Expected: block body uses explicit return.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function main(): void {
  let add: (a: number, b: number) => number = (a: number, b: number): number => {
    return a + b
  }
  assertNumberEqual(add(2, 3), 5, 'arrow block body should return explicit value')
}

main()
