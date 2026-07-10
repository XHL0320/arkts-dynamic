/*
 * Null Safety Stage 1
 * Test point: null and undefined equality.
 * Expected: null == undefined is true, null === undefined is false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  assertTrue(null == undefined, 'null loosely equals undefined')
  assertFalse(null === undefined, 'null strictly not equal to undefined')
  assertTrue(null == null, 'null equals itself')
  assertTrue(undefined == undefined, 'undefined equals itself')
  assertFalse(null == 0, 'null does not loosely equal 0')
  assertFalse(undefined == 0, 'undefined does not loosely equal 0')
}

main()
