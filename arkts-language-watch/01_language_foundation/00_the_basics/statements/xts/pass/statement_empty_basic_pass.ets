/*
 * Statement Stage 1
 * Test point: empty statement does not affect execution.
 * Expected: empty statements are no-ops.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 0
  ;
  ;
  ;
  x = 5
  assertTrue(x === 5, 'empty statements do not affect execution')

  let count: number = 0
  while (count < 3) { count++ }
  ;
  assertTrue(count === 3, 'empty statement after loop is fine')
}

main()
