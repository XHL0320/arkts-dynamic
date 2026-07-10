/*
 * Statement Stage 1
 * Boundary / pending confirmation.
 * Test point: finally block overrides control flow (return/throw/break).
 * Expected in ES: finally return/throw overrides try return/throw.
 * Boundary reason: dynamic ArkTS finally control flow override behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function testFunction(): number {
  try {
    return 1
  } finally {
    // In ES, if finally has a return, it overrides try's return.
    // Testing without finally return to document the boundary.
  }
  return 0
}

function main(): void {
  let result: number = testFunction()
  assertTrue(result === 1, 'try return should work when finally has no return')

  let thrown: boolean = false
  try {
    try {
      throw new Error("try error")
    } finally {
      // finally executes, original exception propagates
    }
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'exception from try should propagate through finally')
}

main()
