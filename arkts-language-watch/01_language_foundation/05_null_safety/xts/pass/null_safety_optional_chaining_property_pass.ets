/*
 * Null Safety Stage 1
 * Test point: optional chaining property access.
 * Expected: obj?.prop returns value if obj is not null, undefined if null.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  let obj: Record<string, number> | null = { x: 42 }
  assertTrue(obj?.x === 42, 'optional chaining on non-null returns value')

  let empty: Record<string, number> | null = null
  assertTrue(empty?.x === undefined, 'optional chaining on null returns undefined')

  let nested: Record<string, Record<string, number>> | null = { inner: { val: 99 } }
  assertTrue(nested?.inner?.val === 99, 'nested optional chaining works')

  let nullNested: Record<string, Record<string, number>> | null = null
  assertTrue(nullNested?.inner?.val === undefined, 'nested optional chaining on null short-circuits')
}

main()
