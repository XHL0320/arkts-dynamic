/*
 * Function Stage 1
 * Test point: rest parameter collects arguments.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function count(...values: number[]): number {
  return values.length
}

function main(): void {
  assertNumberEqual(count(1, 2, 3), 3, 'rest parameter should collect all arguments')
}

main()
