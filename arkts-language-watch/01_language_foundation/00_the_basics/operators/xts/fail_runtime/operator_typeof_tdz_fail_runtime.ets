/*
 * Operator Stage 1
 * Test point: typeof on TDZ variable throws ReferenceError.
 * Expected: typeof x where x is in TDZ throws ReferenceError.
 * Note: typeof does not bypass TDZ for let/const/class.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    // Accessing x before its declaration line — x is in TDZ
    let type: string = typeof x
  } catch (e) {
    thrown = true
  }
  let x: number = 42
  assertTrue(thrown, 'typeof TDZ variable should throw ReferenceError')
  assertTrue(typeof x === "number", 'typeof after declaration works')
}

main()
