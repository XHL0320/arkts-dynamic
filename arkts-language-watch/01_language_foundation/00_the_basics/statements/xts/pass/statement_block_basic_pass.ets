/*
 * Statement Stage 1
 * Test point: block statement basic execution and block scope.
 * Expected: let/const inside block do not leak outside.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let outer: number = 1
  {
    let inner: number = 2
    assertTrue(inner === 2, 'inner let visible inside block')
  }
  assertTrue(outer === 1, 'outer value unchanged')
}

main()
