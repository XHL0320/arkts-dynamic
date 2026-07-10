/*
 * Function Stage 1
 * Test point: return without value produces undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function value(): void {
  return
}

function main(): void {
  assertTrue(value() === undefined, 'return without value should produce undefined')
}

main()
