/*
 * Statement Stage 1
 * Test point: throw statement and catch clause.
 * Expected: throw inside try is caught by catch.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let caught: boolean = false
  let errorMsg: string = ""
  try {
    throw new Error("test error")
  } catch (e) {
    caught = true
    errorMsg = (e as Error).message
  }
  assertTrue(caught, 'exception should be caught')
  assertTrue(errorMsg === "test error", 'error message should match')
}

main()
