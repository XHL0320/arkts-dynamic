/*
 * Generic Stage 1
 * Test point: nested generic object.
 * Expected: generic type with generic member compiles.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Pair<A, B> {
  first: A
  second: B
  constructor(a: A, b: B) { this.first = a; this.second = b }
}

function main(): void {
  let p: Pair<string, Pair<number, boolean>> = new Pair("outer", new Pair(42, true))
  assertTrue(p.first === "outer", 'nested generic first')
  assertTrue(p.second.first === 42, 'nested generic inner first')
  assertTrue(p.second.second === true, 'nested generic inner second')
}

main()
