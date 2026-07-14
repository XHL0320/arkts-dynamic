/*
 * Case ID: NULL-PASS-001
 * Coverage ID:
 *   - NS-DEFPARAM-002
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify explicit value overrides default parameter.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function concat(a: string, b: string = "default"): string {
  return a + b
}

function main(): void {
  assertTrue(concat("hello") === "hellodefault", 'omitted triggers default')
  assertTrue(concat("hello", undefined) === "hellodefault", 'undefined triggers default')
  // null is not undefined 鈥?it does not trigger default in standard JS/TS
  // But ArkTS may handle this differently
  let result: string = concat("hello", null as string)
  assertTrue(result === "hellonull", 'null does not trigger default, becomes "null"')
}

main()