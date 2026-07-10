/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic runtime erasure verification.
 * Boundary reason: generic type parameters are typically erased at runtime; behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class GenericBox<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function main(): void {
  let box: GenericBox<number> = new GenericBox(42)
  // At runtime, GenericBox<number> is just GenericBox (T is erased).
  // typeof box should be "object", not "GenericBox<number>".
  assertTrue(typeof box === "object", 'generic type erased at runtime')
  assertTrue(box.value === 42, 'value still accessible after erasure')
}

main()
