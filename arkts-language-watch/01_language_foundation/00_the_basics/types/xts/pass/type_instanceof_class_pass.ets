/*
 * Case ID: TYPE-PASS-005
 * Coverage ID:
 *   - TYPE-STAGE1-023
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

class Demo {
  value: number = 1
}

let demo = new Demo()
assertTrue(demo instanceof Demo, 'class instance should be instanceof class')
