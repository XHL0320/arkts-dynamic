/*
 * Expected: compile error.
 * Reason: overload signatures require an implementation when TS-style overload syntax is accepted.
 */
function missingImpl(value: number): number
