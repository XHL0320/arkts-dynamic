/*
 * Case ID: STMT-PASS-022
 * Coverage ID:
 *   - STMT-TRY-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify try-catch-finally execution order.. try → catch (on exception) → finally.
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
