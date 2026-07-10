/*
 * Statement Stage 1
 * Test point: try-catch-finally execution order.
 * Expected: try → catch (on exception) → finally.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let log: string = ""
  try {
    log += "try"
    throw new Error("test")
  } catch (e) {
    log += "catch"
  } finally {
    log += "finally"
  }
  assertTrue(log === "trycatchfinally", 'order should be try→catch→finally')

  let log2: string = ""
  try {
    log2 += "try"
  } catch (e) {
    log2 += "catch"
  } finally {
    log2 += "finally"
  }
  assertTrue(log2 === "tryfinally", 'without exception: try→finally')
}

main()
