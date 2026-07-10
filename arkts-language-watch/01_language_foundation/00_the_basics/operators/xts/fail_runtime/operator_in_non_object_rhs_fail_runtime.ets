/*
 * Operator Stage 1
 * Test point: in operator with non-object right-hand side throws TypeError.
 * Expected: "x" in 42 throws TypeError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    // Using a variable to avoid compile-time type errors
    let nonObject: number = 42
    let exists: boolean = "x" in (nonObject as Object)
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'in operator with non-object RHS should throw TypeError')

  // Valid usage for contrast
  let obj: Record<string, number> = { x: 1 }
  assertTrue("x" in obj, 'valid in operator usage')
}

main()
