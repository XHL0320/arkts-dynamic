/*
 * Case ID: KEYW-PASS-002
 * Coverage ID:
 *   - KW-DECL-005
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify class keyword as declaration keyword.. class keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class MyClass {
  value: number
  constructor(v: number) { this.value = v }
}

function main(): void {
  let obj: MyClass = new MyClass(99)
  assertTrue(obj.value === 99, 'class declaration keyword works')
}

main()
