/*
 * Function Stage 3
 * Coverage: calling a non-function value.
 * Expected: runtime exception is thrown.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    eval('let value = 1; value()')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'calling non-function should throw')
}

main()
