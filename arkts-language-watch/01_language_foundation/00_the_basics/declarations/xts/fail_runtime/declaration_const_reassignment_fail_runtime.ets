/*
 * Declaration Stage 1
 * Test point: const binding cannot be reassigned.
 * Expected: reassignment throws a runtime exception in dynamic ArkTS.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  const value: number = 1
  let thrown: boolean = false
  try {
    value = 2
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'expected runtime exception for const reassignment')
  assertTrue(value === 1, 'const binding value should remain unchanged')
}

main()
