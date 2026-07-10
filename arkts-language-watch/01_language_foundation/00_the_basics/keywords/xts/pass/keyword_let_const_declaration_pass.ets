/*
 * Keyword Stage 1
 * Test point: let and const keywords as declaration keywords.
 * Expected: let/const keywords can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let a: number = 1
  const b: number = 2
  assertTrue(a === 1, 'let declaration keyword works')
  assertTrue(b === 2, 'const declaration keyword works')
  a = 3
  assertTrue(a === 3, 'let can be reassigned')
}

main()
