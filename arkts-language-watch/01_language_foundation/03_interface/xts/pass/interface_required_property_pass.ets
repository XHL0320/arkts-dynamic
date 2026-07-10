/*
 * Interface Stage 1
 * Test point: interface with required property.
 * Expected: interface with required property compiles and enforces structure.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Person {
  name: string
  age: number
}

function main(): void {
  let p: Person = { name: "Alice", age: 30 }
  assertTrue(p.name === "Alice", 'required property name')
  assertTrue(p.age === 30, 'required property age')
}

main()
