/*
 * Case ID: TYPE-PASS-003
 * Coverage ID:
 *   - TYPE-STAGE1-019
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify types behavior
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let truthy: boolean = true
let falsy: boolean = false
assertTrue(truthy === true, 'true should stay true')
assertTrue(falsy === false, 'false should stay false')
