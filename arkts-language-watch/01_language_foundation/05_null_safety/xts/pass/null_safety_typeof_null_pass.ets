/*
 * Null Safety Stage 1
 * Test point: typeof null and undefined distinction.
 * Expected: typeof null is "object", typeof undefined is "undefined".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(typeof null === "object", 'typeof null is object (historical)')
  assertTrue(typeof undefined === "undefined", 'typeof undefined is "undefined"')
  assertTrue(typeof null !== typeof undefined, 'typeof null and undefined differ')
}

main()
