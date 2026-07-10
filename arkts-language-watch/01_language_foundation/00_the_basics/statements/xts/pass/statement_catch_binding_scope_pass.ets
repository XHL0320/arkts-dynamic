/*
 * Statement Stage 1
 * Test point: catch binding scope is block-level.
 * Expected: catch parameter is only visible inside catch block.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caughtValue: string = ""
  try {
    throw new Error("test")
  } catch (e) {
    caughtValue = (e as Error).message
  }
  // e is not accessible here (block-scoped to catch)
  assertTrue(caughtValue === "test", 'catch binding should be accessible inside catch block')
}

main()
