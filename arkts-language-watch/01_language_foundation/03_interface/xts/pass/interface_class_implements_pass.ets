/*
 * Case ID: INTF-PASS-002
 * Coverage ID:
 *   - IF-IMPL-001
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: class
 * Spec Source: pending
 * Description: Verify class implements interface with all required members.
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
