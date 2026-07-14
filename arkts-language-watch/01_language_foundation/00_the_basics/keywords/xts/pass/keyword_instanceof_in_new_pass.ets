/*
 * Case ID: KEYW-PASS-006
 * Coverage ID:
 *   - KW-OP-004
 *   - KW-OP-005
 *   - KW-OP-006
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Description: Verify instanceof/in/new keywords as expression operators.. instanceof/in/new keywords work in expression position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class Foo { val: number = 0 }

function main(): void {
  let obj: Foo = new Foo()
  assertTrue(obj instanceof Foo, 'instanceof keyword works')
  assertTrue(obj instanceof Object, 'instanceof Object works')
  let arr: number[] = [1, 2]
  assertTrue("0" in arr, 'in keyword works for array index')
  let newObj: Foo = new Foo()
  assertTrue(newObj.val === 0, 'new keyword works')
}

main()
