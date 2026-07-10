/*
 * Null Safety Stage 1
 * Regression test.
 * Test point: null safety basic regression — null/undefined/typeof/equality/optional chaining/??.
 * Regression reason: verify core null safety behaviors remain stable.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}
function assertFalse(value: boolean, message: string): void {
  if (value) { throw new Error(message) }
}

function main(): void {
  // null and undefined basics
  assertTrue(null === null, 'regression: null equals null')
  assertTrue(undefined === undefined, 'regression: undefined equals undefined')
  assertTrue(null == undefined, 'regression: null loosely equals undefined')
  assertFalse(null === undefined, 'regression: null strictly not equal undefined')

  // typeof
  assertTrue(typeof null === "object", 'regression: typeof null is object')
  assertTrue(typeof undefined === "undefined", 'regression: typeof undefined')

  // nullish coalescing
  assertTrue((null ?? 42) === 42, 'regression: null ?? 42')
  assertTrue((undefined ?? "x") === "x", 'regression: undefined ?? x')
  assertTrue((0 ?? 42) === 0, 'regression: 0 ?? 42 preserves 0')

  // optional chaining
  let obj: Record<string, number> | null = null
  assertTrue(obj?.x === undefined, 'regression: null optional chaining returns undefined')
}

main()
