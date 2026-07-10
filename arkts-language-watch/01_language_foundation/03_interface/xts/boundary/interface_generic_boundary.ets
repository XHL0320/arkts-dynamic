/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: generic interface declaration.
 * Boundary reason: dynamic ArkTS generic interface support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Container<T> {
  value: T
  getValue(): T
}

class NumberContainer implements Container<number> {
  value: number
  constructor(v: number) { this.value = v }
  getValue(): number { return this.value }
}

function main(): void {
  let c: Container<number> = new NumberContainer(99)
  assertTrue(c.getValue() === 99, 'generic interface implementation')
}

main()
