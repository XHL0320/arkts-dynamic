/*
 * Generic Stage 1
 * Test point: generic class basic declaration and instantiation.
 * Expected: Container<T> compiles and works.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Container<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function main(): void {
  let c: Container<number> = new Container<number>(42)
  assertTrue(c.value === 42, 'generic class number container')
  let s: Container<string> = new Container<string>("hi")
  assertTrue(s.value === "hi", 'generic class string container')
}

main()
