/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic class constructor parameter type.
 * Boundary reason: constructor parameter generic type checking needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Wrapper<T> {
  inner: T
  constructor(value: T) {
    this.inner = value
  }
}

function main(): void {
  let w: Wrapper<number> = new Wrapper(77)
  assertTrue(w.inner === 77, 'constructor parameter type matches')
}

main()
