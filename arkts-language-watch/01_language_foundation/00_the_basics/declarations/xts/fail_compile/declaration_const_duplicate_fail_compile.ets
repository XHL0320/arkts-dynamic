/*
 * Declaration Stage 1
 * Expected: compile error.
 * Reason: const declarations cannot be duplicated in the same lexical scope.
 */

const value: number = 1
const value: number = 2
