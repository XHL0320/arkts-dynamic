// Type Stage 1. Expected: bigint literal can hold integer value if supported.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = 10n
assertTrue(value === 10n, 'bigint literal should preserve value')
