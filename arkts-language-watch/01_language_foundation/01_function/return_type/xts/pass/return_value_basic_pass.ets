/*
 * Function Stage 1
 * Test point: return value.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(): number {
  return 7
}

function main(): void {
  assertNumberEqual(value(), 7, 'return should produce a value')
}

main()
