/*
 * Declaration Stage 1
 * Test point: let block scope and shadowing.
 * Expected: inner block let shadows outer let without changing it.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let value: number = 1
  {
    let value: number = 2
    assertTrue(value === 2, 'inner let should be visible inside block')
  }
  assertTrue(value === 1, 'outer let should remain unchanged')
}

main()
