/*
 * Declaration Stage 1
 * Expected: compile error.
 * Reason: let declarations cannot be duplicated in the same lexical scope.
 */

let value: number = 1
let value: number = 2
