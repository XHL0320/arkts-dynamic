/*
 * Function Stage 1
 * Test point: return in finally overrides return in try.
 */

function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function value(): number {
  try {
    return 1
  } finally {
    return 2
  }
}

function main(): void {
  assertNumberEqual(value(), 2, 'finally return should override try return')
}

main()
