/*
 * Case ID: GEN-BOUND-005
 * Coverage ID:
 *   - GEN-CONST-001
 *   - GEN-CONST-002
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic constraint declaration and satisfaction boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface HasLength {
  length: number
}

function getLength<T extends HasLength>(item: T): number {
  return item.length
}

function main(): void {
  let len: number = getLength("hello")
  assertTrue(len === 5, 'constraint allows string (has length)')
  let arrLen: number = getLength([1, 2, 3])
  assertTrue(arrLen === 3, 'constraint allows array (has length)')
}

main()
