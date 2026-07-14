/*
 * Case ID: OPER-PASS-008
 * Coverage ID:
 *   - OP-DELETE-OPERATOR-001
 *   - OP-DELETE-OPERATOR-002
 *   - OP-UNARY-004
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify delete object property.. delete obj.x returns true, property removed.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { x: 1, y: 2 }
  assertTrue(delete obj.x === true, 'delete returns true for configurable property')
  assertTrue(obj.x === undefined, 'deleted property is undefined')
  assertTrue(!("x" in obj), 'deleted property is not in object')
  assertTrue(obj.y === 2, 'other properties remain')
  assertTrue(delete obj.nonExistent === true, 'delete non-existent returns true')
}

main()
