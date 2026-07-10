/*
 * Function Stage 1
 * Test point: function as parameter.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function run(cb: (v: number) => number): number {
  return cb(3)
}

function double(v: number): number {
  return v * 2
}

function main(): void {
  assertNumberEqual(run(double), 6, 'function parameter should be invoked')
}

main()
