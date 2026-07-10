// Type Stage 1. Expected: number and bigint loose comparison follows dynamic semantics if bigint is supported.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

assertTrue(1 == 1n, 'number 1 should loosely equal bigint 1n')
assertTrue(1 !== 1n, 'number 1 should not strictly equal bigint 1n')
