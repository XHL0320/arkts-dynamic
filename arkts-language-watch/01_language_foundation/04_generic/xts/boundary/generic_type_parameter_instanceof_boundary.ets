/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: instanceof with generic type parameter.
 * Boundary reason: type parameter T has no runtime prototype; instanceof T is typically a compile error.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class GenericList<T> {
  items: T[] = []
  add(item: T): void { this.items.push(item) }
}

function main(): void {
  let list: GenericList<number> = new GenericList()
  list.add(1)
  list.add(2)
  // list instanceof GenericList works (class has runtime presence).
  // list instanceof T would be a compile error (T has no runtime presence).
  assertTrue(list instanceof GenericList, 'instanceof class (not type param) works')
  assertTrue(list.items.length === 2, 'list has 2 items')
}

main()
