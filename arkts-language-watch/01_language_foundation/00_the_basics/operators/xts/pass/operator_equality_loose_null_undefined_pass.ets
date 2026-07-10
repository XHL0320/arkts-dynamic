/*
 * Operator Stage 1
 * Test point: loose equality null and undefined.
 * Expected: null == undefined, null == null, undefined == undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(null == undefined, 'null loosely equals undefined')
  assertTrue(null == null, 'null loosely equals null')
  assertTrue(undefined == undefined, 'undefined loosely equals undefined')
  assertFalse(null == 0, 'null does not loosely equal 0')
  assertFalse(undefined == 0, 'undefined does not loosely equal 0')
  assertFalse(null == "", 'null does not loosely equal empty string')
  assertFalse(undefined == false, 'undefined does not loosely equal false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
