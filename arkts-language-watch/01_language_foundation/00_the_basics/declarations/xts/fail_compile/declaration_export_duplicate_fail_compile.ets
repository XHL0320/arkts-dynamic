/*
 * Declaration Stage 1
 * Expected: compile error.
 * Reason: duplicate export name is not allowed.
 */

const value: number = 1
const other: number = 2

export { value as duplicated }
export { other as duplicated }
