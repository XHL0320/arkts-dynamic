/*
 * Operator Stage 1
 * Test point: nullish coalescing for null and undefined.
 * Expected: null ?? "default" === "default", undefined ?? "default" === "default".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(null ?? "default" === "default", 'null ?? default')
  assertTrue(undefined ?? "default" === "default", 'undefined ?? default')
  assertTrue(0 ?? "default" === 0, 'zero is preserved by ??')
  assertTrue(false ?? "default" === false, 'false is preserved by ??')
  assertTrue("" ?? "default" === "", 'empty string is preserved by ??')
}

main()
