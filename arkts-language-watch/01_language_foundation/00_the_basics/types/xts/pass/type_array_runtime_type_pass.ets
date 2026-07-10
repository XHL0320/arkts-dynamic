// Type Stage 1. Expected: array runtime type is object and Array.isArray identifies arrays.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value: number[] = [1, 2, 3]
assertTrue(typeof value === 'object', 'typeof array should be object')
assertTrue(Array.isArray(value), 'Array.isArray should identify array values')
