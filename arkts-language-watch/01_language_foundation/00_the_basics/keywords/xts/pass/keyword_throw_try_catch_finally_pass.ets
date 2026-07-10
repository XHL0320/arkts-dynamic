/*
 * Keyword Stage 1
 * Test point: throw/try/catch/finally keywords in valid positions.
 * Expected: throw/try/catch/finally keywords work as exception handling.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caught: boolean = false
  let finallyRan: boolean = false
  try {
    throw new Error("test")
  } catch (e) {
    caught = true
  } finally {
    finallyRan = true
  }
  assertTrue(caught, 'catch keyword works')
  assertTrue(finallyRan, 'finally keyword works')
}

main()
