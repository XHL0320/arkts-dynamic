/*
 * Null Safety Stage 1
 * Test point: undefined basic value behavior.
 * Expected: undefined is a value, typeof undefined is "undefined".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  let u: undefined = undefined
  assertTrue(u === undefined, 'undefined equals undefined')
  assertTrue(typeof u === "undefined", 'typeof undefined is "undefined"')
  assertFalse(Boolean(u), 'undefined is falsy')
  let nan: number = Number(u)
  assertTrue(nan !== nan, 'Number(undefined) is NaN')
  assertTrue(String(u) === "undefined", 'String(undefined) is "undefined"')
}

main()
