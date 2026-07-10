/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: derived constructor return and this boundary.
 * Boundary reason: returning object from constructor changes this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base { baseValue: number = 1 }

class Derived extends Base {
  derivedValue: number = 2
  constructor() {
    super()
    // If constructor returns an object, that becomes the result instead of this.
    // This boundary documents whether this behavior is enforced.
  }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.derivedValue === 2, 'derived this is instance')
  assertTrue(d.baseValue === 1, 'base value inherited')
}

main()
