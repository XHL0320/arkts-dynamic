/*
 * Keyword Stage 1
 * Test point: if/else keywords in valid positions.
 * Expected: if/else keywords work as conditional statement.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 5
  if (x > 0) {
    assertTrue(true, 'if branch executed')
  } else {
    assertTrue(false, 'else should not execute')
  }
}

main()
