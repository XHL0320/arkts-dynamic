/*
 * Function Stage 1
 * Test point: calling a non-callable value.
 * Expected: runtime TypeError or equivalent runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let value: any = 1
    value()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'calling non-callable value should throw')
}

main()
