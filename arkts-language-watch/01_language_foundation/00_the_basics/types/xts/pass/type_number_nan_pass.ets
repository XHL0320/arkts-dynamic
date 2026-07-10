// Type Stage 1. Expected: NaN is not equal to itself.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value: number = 0 / 0
assertTrue(value !== value, 'NaN should not equal itself')
