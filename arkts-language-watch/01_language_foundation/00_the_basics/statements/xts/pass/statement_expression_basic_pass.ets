/*
 * Statement Stage 1
 * Test point: expression statement executes and discards result.
 * Expected: assignment and call expressions work as statements.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function sideEffect(): number { return 42 }

function main(): void {
  let x: number = 0
  x = 10
  assertTrue(x === 10, 'assignment expression statement')
  sideEffect()
  x++
  assertTrue(x === 11, 'increment expression statement')
}

main()
