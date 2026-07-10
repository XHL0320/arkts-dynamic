/*
 * Null Safety Stage 1
 * Test point: property access on null throws TypeError.
 * Expected: null.property throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let thrown: boolean = false
  try {
    let obj: Record<string, number> | null = null
    let val: number = obj.value
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'property access on null should throw TypeError')
}

main()
