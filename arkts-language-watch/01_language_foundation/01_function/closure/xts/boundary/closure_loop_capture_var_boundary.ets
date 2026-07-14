/*
 * Case ID: FUNC-BOUND-002
 * Coverage ID:
 *   - CLOSURE-0007
 * Feature: function
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 01_function
 * Related Chapters: types
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic function behavior has not been verified.
 * Description: Verify closure captures loop var binding.
 */
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function makeReaders(): Array<() => number> {
  let readers: Array<() => number> = []
  for (var i: number = 0; i < 3; i++) {
    readers.push(function(): number {
      return i
    })
  }
  return readers
}

function main(): void {
  let readers: Array<() => number> = makeReaders()
  assertTrue(readers.length === 3, 'var loop capture boundary should create three closures')
}

main()
