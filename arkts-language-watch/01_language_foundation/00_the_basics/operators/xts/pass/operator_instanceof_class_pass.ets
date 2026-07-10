/*
 * Operator Stage 1
 * Test point: instanceof class.
 * Expected: new Foo() instanceof Foo === true.
 */

class Person {
  name: string
  constructor(name: string) {
    this.name = name
  }
}

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let p: Person = new Person("Alice")
  assertTrue(p instanceof Person, 'instance of its class')
  assertTrue(p instanceof Object, 'all objects are instances of Object')
  let arr: number[] = [1, 2, 3]
  assertTrue(arr instanceof Array, 'array instanceof Array')
  assertTrue(arr instanceof Object, 'array instanceof Object')
}

main()
