/*
 * Case ID: NULL-BOUND-003
 * Coverage ID:
 *   - NS-IOM-001
 *   - NS-IOM-002
 *   - NS-IOM-003
 * Feature: null_safety
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 05_null_safety
 * Related Chapters: interface
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic null safety behavior has not been verified.
 * Description: Verify interface optional member with undefined boundary.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Partial {
  required: string
  optional?: number
}

class PartialImpl implements Partial {
  required: string = "present"
  // optional is omitted 鈥?should compile if optional is respected
}

function main(): void {
  let p: Partial = new PartialImpl()
  assertTrue(p.required === "present", 'required member present')
  assertTrue(p.optional === undefined, 'optional member absent is undefined')
}

main()