/*
 * Function Stage 2
 * Coverage: arrow function as callback.
 * Expected: callback arrow executes with captured outer value.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function run(value: number, callback: (v: number) => number): number {
  return callback(value)
}

function main(): void {
  let offset: number = 5
  let result: number = run(2, (v: number): number => v + offset)
  assertNumberEqual(result, 7, 'arrow callback should execute and capture outer binding')
}

main()
