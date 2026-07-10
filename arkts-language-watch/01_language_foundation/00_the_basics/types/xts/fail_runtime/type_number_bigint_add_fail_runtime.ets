// Type Stage 1. Expected: number + bigint throws at runtime if bigint is supported.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let thrown: boolean = false
try {
  let value = 1 + 1n
} catch (e) {
  thrown = true
}

assertTrue(thrown, 'expected number + bigint to throw')
