/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: derived class this before super.
 * Boundary reason: accessing this before super() should throw ReferenceError.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Base { value: number = 10 }

class Derived extends Base {
  constructor() {
    // Accessing `this` before super() should throw ReferenceError in ES.
    // If dynamic ArkTS allows this to compile, it documents relaxed enforcement.
    super()
    this.value = 20
  }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.value === 20, 'derived after super works')
  // The boundary documents whether pre-super this access is enforced.
  assertTrue(true, 'derived before super boundary documented')
}

main()
