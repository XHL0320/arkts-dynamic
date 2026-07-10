// Type Stage 1. Expected: array is an instance of Array.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value: number[] = [1]
assertTrue(value instanceof Array, 'array should be instanceof Array')
