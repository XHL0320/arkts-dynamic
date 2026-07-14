/*
 * Case ID: OPER-PASS-014
 * Coverage ID:
 *   - OP-INSTANCEOF-001
 *   - OP-INSTANCEOF-002
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify instanceof class.. new Foo() instanceof Foo === true.
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
