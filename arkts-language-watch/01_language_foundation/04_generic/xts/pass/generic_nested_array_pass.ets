/*
 * Case ID: GEN-PASS-012
 * Coverage ID:
 *   - GEN-NEST-001
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify nested generic Array<Array<T>>.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let matrix: number[][] = [[1, 2], [3, 4]]
  assertTrue(matrix.length === 2, 'nested array outer length')
  assertTrue(matrix[0][0] === 1, 'nested array element access')
  assertTrue(matrix[1][1] === 4, 'nested array second row')
}

main()
