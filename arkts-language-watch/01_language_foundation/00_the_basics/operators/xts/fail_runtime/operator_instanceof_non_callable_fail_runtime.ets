/*
 * Operator Stage 1
 * Test point: instanceof with non-callable right-hand side throws TypeError.
 * Expected: x instanceof 42 throws TypeError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Dummy {}

function main(): void {
  let thrown: boolean = false
  try {
    let nonCallable: number = 42
    let result: boolean = (new Dummy()) instanceof (nonCallable as Function)
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'instanceof with non-callable RHS should throw TypeError')

  // Valid usage for contrast
  let d: Dummy = new Dummy()
  assertTrue(d instanceof Dummy, 'valid instanceof usage')
}

main()
