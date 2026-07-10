// Type Stage 1. Expected: number values preserve basic arithmetic result.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value: number = 40 + 2
assertTrue(value === 42, 'number arithmetic should produce 42')
