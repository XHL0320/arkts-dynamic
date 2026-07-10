// Type Stage 1. Expected: typeof undefined returns "undefined".
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = undefined
assertTrue(typeof value === 'undefined', 'typeof undefined should be undefined')
