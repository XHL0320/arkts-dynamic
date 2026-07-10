/*
 * Operator Stage 1
 * Test point: string concatenation by plus.
 * Expected: "a" + "b" === "ab".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue("a" + "b" === "ab", 'string concat')
  assertTrue("" + "x" === "x", 'empty string concat')
  assertTrue("x" + 1 === "x1", 'string plus number coerces to string')
  assertTrue(1 + "2" === "12", 'number plus string coerces to string')
}

main()
