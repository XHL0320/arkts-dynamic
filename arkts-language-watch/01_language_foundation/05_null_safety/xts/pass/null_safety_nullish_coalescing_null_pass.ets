/*
 * Null Safety Stage 1
 * Test point: nullish coalescing with null and undefined.
 * Expected: null ?? fallback returns fallback, undefined ?? fallback returns fallback.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue((null ?? "fallback") === "fallback", 'null ?? fallback')
  assertTrue((undefined ?? "fallback") === "fallback", 'undefined ?? fallback')
  assertTrue((null ?? 42) === 42, 'null ?? number')
  assertTrue((undefined ?? null) === null, 'undefined ?? null returns null')
}

main()
