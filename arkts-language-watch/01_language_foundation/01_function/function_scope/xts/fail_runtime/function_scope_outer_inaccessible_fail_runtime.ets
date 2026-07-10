/*
 * Function Stage 2
 * Coverage: function local binding is inaccessible outside the function.
 * Expected: reading the internal binding outside its function throws a runtime exception.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function createLocal(): void {
  let hiddenValue: number = 1
}

function main(): void {
  let thrown: boolean = false
  createLocal()
  try {
    eval('hiddenValue')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'function local binding should not be visible outside function')
}

main()
