/*
 * Case ID: NULL-PASS-014
 * Coverage ID:
 *   - NS-OP-002
 *   - NS-OP-005
 * Feature: null_safety
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: interface, class
 * Spec Source: pending
 * Description: Verify optional property with explicit undefined value.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Options {
  required: string
  optional?: number
}

function main(): void {
  let opts: Options = { required: "yes", optional: undefined }
  assertTrue(opts.optional === undefined, 'optional property is undefined')
  assertTrue("optional" in opts, 'optional property key exists when explicitly undefined')
}

main()