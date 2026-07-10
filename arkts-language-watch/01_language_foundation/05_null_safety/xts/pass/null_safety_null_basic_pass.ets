/*
 * Null Safety Stage 1
 * Test point: null basic value behavior.
 * Expected: null is a value, typeof null is "object", Boolean(null) is false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  let n: null = null
  assertTrue(n === null, 'null equals null')
  assertTrue(typeof n === "object", 'typeof null is object (historical)')
  assertFalse(Boolean(n), 'null is falsy')
  assertTrue(Number(n) === 0, 'Number(null) is 0')
  assertTrue(String(n) === "null", 'String(null) is "null"')
}

main()
