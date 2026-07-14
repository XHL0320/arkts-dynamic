/*
 * Case ID: INTF-BOUND-006
 * Coverage ID:
 *   - IF-MOD-001
 * Feature: interface
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 03_interface
 * Related Chapters: module
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic interface behavior has not been verified.
 * Description: Verify interface export boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

export interface ExportedInterface {
  data: string
}

function main(): void {
  let obj: ExportedInterface = { data: "exported" }
  assertTrue(obj.data === "exported", 'exported interface used locally')
}

main()
