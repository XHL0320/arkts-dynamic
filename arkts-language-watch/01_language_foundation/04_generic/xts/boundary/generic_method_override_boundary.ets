/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic method override in subclass.
 * Boundary reason: dynamic ArkTS generic method override behavior needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Base {
  transform<T>(value: T): T { return value }
}

class Derived extends Base {
  transform<T>(value: T): T { return value }
}

function main(): void {
  let d: Derived = new Derived()
  assertTrue(d.transform(42) === 42, 'generic method override works')
}

main()
