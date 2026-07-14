/*
 * Case ID: INTF-BOUND-011
 * Coverage ID:
 *   - IF-METHOD-002
 *   - IF-METHOD-003
 * Feature: interface
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 03_interface
 * Related Chapters: function
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic interface behavior has not been verified.
 * Description: Verify method parameter and return type, and method-function type mapping boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Calculator {
  compute(input: number): number
}

class Adder implements Calculator {
  compute(input: number): number {
    return input + 1
  }
}

function main(): void {
  let calc: Calculator = new Adder()
  let result: number = calc.compute(41)
  assertTrue(result === 42, 'method parameter type compatible')
}

main()
