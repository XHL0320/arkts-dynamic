// Type Stage 1. Expected: property access on undefined throws at runtime.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let thrown: boolean = false
try {
  let value = undefined
  value.x
} catch (e) {
  thrown = true
}

assertTrue(thrown, 'expected property access on undefined to throw')
