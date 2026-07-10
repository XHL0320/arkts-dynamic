// Type Stage 1. Expected: Infinity and -Infinity are distinguishable number values.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let positive: number = 1 / 0
let negative: number = -1 / 0
assertTrue(positive > 0, 'Infinity should be greater than zero')
assertTrue(negative < 0, '-Infinity should be less than zero')
