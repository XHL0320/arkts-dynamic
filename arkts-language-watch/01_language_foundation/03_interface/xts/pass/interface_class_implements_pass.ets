/*
 * Interface Stage 1
 * Test point: class implements interface with all required members.
 * Expected: class that implements all required members compiles.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Animal {
  name: string
  sound(): string
}

class Dog implements Animal {
  name: string
  constructor(name: string) { this.name = name }
  sound(): string { return "Woof" }
}

function main(): void {
  let dog: Animal = new Dog("Rex")
  assertTrue(dog.name === "Rex", 'implements required property')
  assertTrue(dog.sound() === "Woof", 'implements required method')
}

main()
