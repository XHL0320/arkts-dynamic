/*
 * Null Safety Stage 1
 * Test point: method call on undefined throws TypeError.
 * Expected: undefined.method() throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Handler {
  process(): void {}
}

function main(): void {
  let thrown: boolean = false
  try {
    let h: Handler | undefined = undefined
    h.process()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'method call on undefined should throw TypeError')
}

main()
