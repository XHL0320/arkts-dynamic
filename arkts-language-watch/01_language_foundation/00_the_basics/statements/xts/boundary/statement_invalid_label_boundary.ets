/*
 * Statement Stage 1
 * Boundary / pending confirmation.
 * Test point: invalid label reference boundary.
 * Expected in ES: break/continue with non-existent label is SyntaxError.
 * Boundary reason: dynamic ArkTS label support and error detection needs confirmation.
 */

function main(): void {
  // This file documents the boundary for label validation.
  // In ES, break with a non-existent label is a SyntaxError.
  // Dynamic ArkTS label support status is pending confirmation.
  // If labels are fully supported, this should be a compile error.
  let count: number = 0
  for (let i: number = 0; i < 3; i++) {
    count++
  }
}
