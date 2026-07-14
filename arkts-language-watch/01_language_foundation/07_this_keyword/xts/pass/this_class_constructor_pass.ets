/*
 * Case ID: THIS-PASS-005
 * Coverage ID:
 *   - TK-CC-001
 *   - TK-CC-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_class_constructor_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class
 * Spec Source: pending
 * Description: Verify class constructor this.
 * Notes: Original metadata: This Keyword Stage 1 Test point: class constructor this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ConstructorTest {
  value: number
  constructor(v: number) {
    this.value = v
  }
}

function main(): void {
  let obj: ConstructorTest = new ConstructorTest(42)
  assertTrue(obj.value === 42, 'constructor this is new instance')
}

main()
