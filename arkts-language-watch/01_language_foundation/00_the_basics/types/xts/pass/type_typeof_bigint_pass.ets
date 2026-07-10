// Type Stage 1. Expected: typeof bigint returns "bigint" if bigint literal is supported.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = 1n
assertTrue(typeof value === 'bigint', 'typeof bigint should be bigint')
