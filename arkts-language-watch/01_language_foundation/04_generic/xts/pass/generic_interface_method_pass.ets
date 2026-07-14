/*
 * Case ID: GEN-PASS-009
 * Coverage ID:
 *   - GEN-IF-003
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: interface, function
 * Spec Source: pending
 * Description: Verify generic interface method signature.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Transformer<T, R> {
  transform(input: T): R
}

class StringLength implements Transformer<string, number> {
  transform(input: string): number { return input.length }
}

function main(): void {
  let t: Transformer<string, number> = new StringLength()
  assertTrue(t.transform("hello") === 5, 'generic interface method transform')
}

main()
