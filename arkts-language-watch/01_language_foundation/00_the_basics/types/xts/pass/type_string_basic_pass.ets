// Type Stage 1. Expected: string value preserves length and content.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value: string = 'arkts'
assertTrue(value.length === 5, 'string length should be 5')
assertTrue(value === 'arkts', 'string content should be preserved')
