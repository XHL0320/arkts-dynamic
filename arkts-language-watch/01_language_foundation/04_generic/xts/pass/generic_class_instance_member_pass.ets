/*
 * Generic Stage 1
 * Test point: generic class instance member types.
 * Expected: generic class members use type parameter correctly.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Box<T> {
  content: T
  constructor(c: T) { this.content = c }
  getContent(): T { return this.content }
}

function main(): void {
  let box: Box<number> = new Box(99)
  assertTrue(box.getContent() === 99, 'instance method returns correct type')
  let strBox: Box<string> = new Box("test")
  assertTrue(strBox.getContent() === "test", 'string box content')
}

main()
