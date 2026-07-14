/*
 * Case ID: INTF-PASS-003
 * Coverage ID:
 *   - IF-DECL-001
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify empty interface declaration.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface EmptyInterface {}

function main(): void {
  let obj: EmptyInterface = {}
  assertTrue(obj !== null, 'empty interface can be used as type')
}

main()
