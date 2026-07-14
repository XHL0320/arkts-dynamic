/*
 * Case ID: INTF-PASS-009
 * Coverage ID:
 *   - IF-OPT-001
 *   - IF-OPT-002
 *   - IF-OPT-004
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: types,null_safety
 * Spec Source: pending
 * Description: Verify optional property declaration, undefined value, and mixed with required.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Config {
  required: string
  optional?: number
}

function main(): void {
  let c1: Config = { required: "yes" }
  assertTrue(c1.required === "yes", 'required property present')
  assertTrue(c1.optional === undefined, 'optional property absent defaults to undefined')

  let c2: Config = { required: "yes", optional: 42 }
  assertTrue(c2.optional === 42, 'optional property present when provided')
}

main()
