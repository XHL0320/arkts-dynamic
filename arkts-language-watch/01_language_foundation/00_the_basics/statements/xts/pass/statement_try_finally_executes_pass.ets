/*
 * Statement Stage 1
 * Test point: try-finally executes finally block.
 * Expected: finally always executes regardless of exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let finallyExecuted: boolean = false
  try {
    let x: number = 1 + 1
  } finally {
    finallyExecuted = true
  }
  assertTrue(finallyExecuted, 'finally should execute even without exception')

  let finallyAfterThrow: boolean = false
  try {
    try {
      throw new Error("inner")
    } finally {
      finallyAfterThrow = true
    }
  } catch (e) {
    // expected
  }
  assertTrue(finallyAfterThrow, 'finally should execute even when exception occurs')
}

main()
