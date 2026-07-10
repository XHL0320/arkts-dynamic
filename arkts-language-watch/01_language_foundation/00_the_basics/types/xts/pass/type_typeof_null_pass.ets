// Type Stage 1. Expected: typeof null returns "object".
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = null
assertTrue(typeof value === 'object', 'typeof null should be object')
