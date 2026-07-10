/*
 * Statement Stage 1
 * Test point: for-of with non-iterable value throws TypeError.
 * Expected: for-of on a number throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let nonIterable: number = 42
    for (let item of (nonIterable as unknown as number[])) {
      // Should not reach here
    }
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'for-of on non-iterable should throw TypeError')
}

main()
