/*
 * Case ID: NULL-PASS-010
 * Coverage ID:
 *   - NS-OC-CALL-001
 *   - NS-OC-CALL-002
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: operators, function
 * Spec Source: pending
 * Description: Verify obj?.method() calls method or returns undefined.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Greeter {
  greet(): string { return "hello" }
}

function main(): void {
  let g: Greeter | null = new Greeter()
  assertTrue(g?.greet() === "hello", 'optional chaining method call on non-null')

  let nullG: Greeter | null = null
  assertTrue(nullG?.greet() === undefined, 'optional chaining method call on null returns undefined')
}

main()