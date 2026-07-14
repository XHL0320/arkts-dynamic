/*
 * Case ID: THIS-PASS-016
 * Coverage ID:
 *   - TK-STC-001
 *   - TK-STC-002
 * Feature: this_keyword
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Actual Path: arkts-language-watch/01_language_foundation/07_this_keyword/xts/pass/this_static_method_pass.ets
 * Owner Chapter: 07_this_keyword
 * Related Chapters: 02_class, 01_function
 * Spec Source: pending
 * Description: Verify static method this is class constructor.
 * Notes: Original metadata: This Keyword Stage 1 Test point: static method this is class constructor.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class StaticTest {
  static defaultValue: number = 42
  static getDefaultValue(): number { return this.defaultValue }
}

function main(): void {
  assertTrue(StaticTest.getDefaultValue() === 42, 'static method this is class')
}

main()
