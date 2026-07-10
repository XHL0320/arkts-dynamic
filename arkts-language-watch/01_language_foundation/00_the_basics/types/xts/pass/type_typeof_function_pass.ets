// Type Stage 1. Expected: typeof function returns "function".
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): number {
  return 1
}

assertTrue(typeof value === 'function', 'typeof function should be function')
