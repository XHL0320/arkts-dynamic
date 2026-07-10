/*
 * Operator Stage 1
 * Test point: nullish coalescing preserves falsy values (difference from ||).
 * Expected: 0 ?? "x" === 0, "" ?? "x" === "", false ?? "x" === false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let zero: number = 0
  let emptyStr: string = ""
  let falsy: boolean = false
  assertTrue((zero ?? 99) === 0, '?? preserves 0 unlike ||')
  assertTrue((emptyStr ?? "fallback") === "", '?? preserves empty string unlike ||')
  assertTrue((falsy ?? true) === false, '?? preserves false unlike ||')
  assertTrue((zero || 99) === 99, '|| replaces 0')
  assertTrue((falsy || true) === true, '|| replaces false')
}

main()
