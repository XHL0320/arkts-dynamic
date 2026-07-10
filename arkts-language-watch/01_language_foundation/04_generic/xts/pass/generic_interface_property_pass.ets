/*
 * Generic Stage 1
 * Test point: generic interface with property.
 * Expected: generic interface property uses type parameter.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Holder<T> {
  value: T
}

function main(): void {
  let h: Holder<number> = { value: 42 }
  assertTrue(h.value === 42, 'generic interface property number')
  let s: Holder<string> = { value: "prop" }
  assertTrue(s.value === "prop", 'generic interface property string')
}

main()
