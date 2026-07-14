/*
 * Case ID: NULL-PASS-013
 * Coverage ID:
 *   - NS-OP-001
 *   - NS-OP-003
 *   - NS-OP-005
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: interface, class
 * Spec Source: pending
 * Description: Verify optional property absent returns undefined.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Config {
  required: string
  optional?: number
}

function main(): void {
  let c: Config = { required: "yes" }
  assertTrue(c.required === "yes", 'required property present')
  assertTrue(c.optional === undefined, 'optional property absent is undefined')
  assertTrue(!("optional" in c), 'optional property not in object when absent')

  let c2: Config = { required: "yes", optional: 42 }
  assertTrue(c2.optional === 42, 'optional property present when provided')
}

main()