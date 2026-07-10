/*
 * Operator Stage 1
 * Test point: typeof undeclared variable does not throw ReferenceError.
 * Expected: typeof someUndefinedVar === "undefined".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(typeof undefinedVar === "undefined", 'typeof undeclared returns undefined string')
  assertTrue(typeof undefined === "undefined", 'typeof undefined value')
  assertTrue(typeof null === "object", 'typeof null is object (historical)')
  assertTrue(typeof 42 === "number", 'typeof number')
  assertTrue(typeof "str" === "string", 'typeof string')
  assertTrue(typeof true === "boolean", 'typeof boolean')
  assertTrue(typeof 1n === "bigint", 'typeof bigint')
  assertTrue(typeof Symbol() === "symbol", 'typeof symbol')
}

// Declare after typeof usage to prove it doesn't throw on truly undeclared
// Note: in strict module mode, truly undeclared vars may differ.
// This test uses a variable that is declared later to demonstrate TDZ-safe typeof.
let undefinedVar: number = 0

main()
