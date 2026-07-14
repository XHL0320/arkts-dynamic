/*
 * Case ID: NULL-PASS-012
 * Coverage ID:
 *   - NS-OPTPARAM-001
 *   - NS-OPTPARAM-002
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify optional parameter omitted and passed undefined.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function greet(name: string, greeting?: string): string {
  if (greeting === undefined) {
    return "Hello " + name
  }
  return greeting + " " + name
}

function main(): void {
  assertTrue(greet("Alice") === "Hello Alice", 'optional parameter omitted')
  assertTrue(greet("Bob", "Hi") === "Hi Bob", 'optional parameter provided')
  assertTrue(greet("Carol", undefined) === "Hello Carol", 'optional parameter explicit undefined')
}

main()