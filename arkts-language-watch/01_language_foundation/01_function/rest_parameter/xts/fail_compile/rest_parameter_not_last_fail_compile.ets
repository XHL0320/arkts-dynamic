/*
 * Function Stage 1
 * Expected: compile error.
 * Reason: rest parameter must be the last formal parameter.
 */

function invalid(...values: number[], last: number): number {
  return last
}
