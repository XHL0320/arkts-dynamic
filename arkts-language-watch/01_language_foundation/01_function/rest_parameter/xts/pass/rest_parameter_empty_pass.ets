/*
 * Function Stage 1
 * Test point: rest parameter is empty when no remaining arguments are passed.
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
  assertNumberEqual(count(), 0, 'rest parameter should be empty')
}

main()
