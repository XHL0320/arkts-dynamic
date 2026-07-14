/*
 * Case ID: INTF-PASS-005
 * Coverage ID:
 *   - IF-EXT-001
 *   - IF-EXT-002
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify interface extends single interface with member inheritance.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Base {
  id: number
}

interface Extended extends Base {
  name: string
}

function main(): void {
  let obj: Extended = { id: 1, name: "test" }
  assertTrue(obj.id === 1, 'inherited property id')
  assertTrue(obj.name === "test", 'own property name')
}

main()
