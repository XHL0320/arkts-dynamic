/*
 * Case ID: INTF-PASS-007
 * Coverage ID:
 *   - IF-STRUCT-001
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify object literal structural assignment to interface type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Point {
  x: number
  y: number
}

function main(): void {
  let p: Point = { x: 10, y: 20 }
  assertTrue(p.x === 10, 'object literal property x')
  assertTrue(p.y === 20, 'object literal property y')
}

main()
