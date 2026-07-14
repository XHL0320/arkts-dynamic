/*
 * Case ID: OPER-PASS-023
 * Coverage ID:
 *   - OP-TYPEOF-OPERATOR-002
 *   - OP-TYPEOF-OPERATOR-003
 * Feature: language_basics
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: types
 * Spec Source: pending
 * Description: Verify typeof function returns "function".. typeof function(){} === "function", typeof class {} === "function".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function myFunc(): void {}

class MyClass {}

function main(): void {
  assertTrue(typeof myFunc === "function", 'typeof named function')
  assertTrue(typeof function() {} === "function", 'typeof anonymous function')
  assertTrue(typeof arrow === "function", 'typeof arrow function')
  assertTrue(typeof MyClass === "function", 'typeof class is function')
  assertTrue(typeof {} === "object", 'typeof object')
  assertTrue(typeof [] === "object", 'typeof array is object')
}

let arrow = (): void => {}

main()
