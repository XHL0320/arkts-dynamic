/*
 * Operator Stage 1
 * Test point: loose equality number and string.
 * Expected: 1 == "1", 0 == "".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(1 == "1", 'number loosely equals string with same value')
  assertTrue(0 == "", 'zero loosely equals empty string')
  assertTrue(0 == "0", 'zero loosely equals string zero')
  assertTrue(1 != "2", 'one does not equal string two')
}

main()
