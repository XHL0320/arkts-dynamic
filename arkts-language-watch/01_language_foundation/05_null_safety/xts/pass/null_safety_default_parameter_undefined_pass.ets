/*
 * Null Safety Stage 1
 * Test point: default parameter with undefined uses default.
 * Expected: passing undefined triggers default value.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function multiply(a: number, b: number = 2): number {
  return a * b
}

function main(): void {
  assertTrue(multiply(5) === 10, 'default parameter omitted')
  assertTrue(multiply(5, 3) === 15, 'default parameter provided')
  assertTrue(multiply(5, undefined) === 10, 'default parameter with undefined uses default')
}

main()
