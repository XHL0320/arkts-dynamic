/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: this return type boundary.
 * Boundary reason: polymorphic this return type support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ThisReturn {
  value: number = 42
  // If polymorphic this is supported:
  // clone(): this { ... }
  clone(): ThisReturn {
    let c: ThisReturn = new ThisReturn()
    c.value = this.value
    return c
  }
}

function main(): void {
  let original: ThisReturn = new ThisReturn()
  let cloned: ThisReturn = original.clone()
  assertTrue(cloned.value === 42, 'clone returns same value')
  assertTrue(cloned !== original, 'clone is different instance')
}

main()
