// Type Stage 1. Expected: typeof object and array both return "object".
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let objectValue = { value: 1 }
let arrayValue: number[] = [1, 2]
assertTrue(typeof objectValue === 'object', 'typeof object should be object')
assertTrue(typeof arrayValue === 'object', 'typeof array should be object')
