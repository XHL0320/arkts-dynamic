/*
 * Null Safety Stage 1
 * Test point: nullish coalescing preserves falsy values (?? vs ||).
 * Expected: 0 ?? "x" is 0, "" ?? "x" is "", false ?? "x" is false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue((0 ?? "fallback") === 0, '0 preserved by ??')
  assertTrue(("" ?? "fallback") === "", 'empty string preserved by ??')
  assertTrue((false ?? "fallback") === false, 'false preserved by ??')

  // Contrast with ||
  assertTrue((0 || "fallback") === "fallback", '0 replaced by ||')
  assertTrue((false || "fallback") === "fallback", 'false replaced by ||')
}

main()
