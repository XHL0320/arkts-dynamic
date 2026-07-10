// Type Stage 1. Expected: object property access works for a simple object value.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = { name: 'arkts', count: 1 }
assertTrue(value.name === 'arkts', 'object string property should be readable')
assertTrue(value.count === 1, 'object number property should be readable')
