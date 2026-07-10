/*
 * Function Stage 1
 * Test point: function as value.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function addOne(v: number): number {
  return v + 1
}

function main(): void {
  let fn = addOne
  assertNumberEqual(fn(1), 2, 'function value should be callable')
}

main()
