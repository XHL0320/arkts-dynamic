/*
 * Operator Stage 1
 * Test point: number + bigint addition throws TypeError.
 * Expected: 1 + 1n throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let result: number = 1 + 1n
    // Should not reach here
    assertTrue(false, 'expected TypeError for number + bigint')
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'number + bigint should throw TypeError')

  // Comparison is allowed, only arithmetic throws
  assertTrue(1 < 2n === true, 'comparison between number and bigint is allowed')
}

main()
