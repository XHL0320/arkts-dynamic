/*
 * Case ID: GEN-PASS-003
 * Coverage ID:
 *   - GEN-CLASS-003
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: class
 * Spec Source: pending
 * Description: Verify generic class instance member type.
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
