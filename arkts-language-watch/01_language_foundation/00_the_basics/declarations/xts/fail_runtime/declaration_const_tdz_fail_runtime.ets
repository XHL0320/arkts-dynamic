/*
 * Declaration Stage 1
 * Test point: const temporal dead zone.
 * Expected: reading a const binding before initialization throws a runtime exception.
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
  const value: number = 1
  assertTrue(thrown, 'expected TDZ runtime exception for const')
  assertTrue(value === 1, 'const should be initialized after declaration')
}

main()
