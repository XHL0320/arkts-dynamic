/*
 * Declaration Stage 1
 * Test point: let temporal dead zone.
 * Expected: reading a let binding before initialization throws a runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let ignored = value
  } catch (e) {
    thrown = true
  }
  let value: number = 1
  assertTrue(thrown, 'expected TDZ runtime exception for let')
  assertTrue(value === 1, 'let should be initialized after declaration')
}

main()
