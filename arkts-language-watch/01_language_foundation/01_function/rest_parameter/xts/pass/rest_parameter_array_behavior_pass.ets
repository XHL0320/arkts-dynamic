/*
 * Function Stage 1
 * Test point: rest parameter behaves like an array.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function firstRest(...values: number[]): number {
  values.push(4)
  return values[0] + values.length
}

function main(): void {
  assertNumberEqual(firstRest(10, 20), 13, 'rest parameter should support array operations')
}

main()
