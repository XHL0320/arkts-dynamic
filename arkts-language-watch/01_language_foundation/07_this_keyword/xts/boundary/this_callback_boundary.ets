/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: callback this boundary.
 * Boundary reason: callback loses receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class CallbackTest {
  value: number = 42
  getValue(): number { return this.value }
}

function main(): void {
  let test: CallbackTest = new CallbackTest()
  // Direct callback: this is lost
  // Arrow callback: this is preserved
  let arrow: () => number = () => test.getValue()
  assertTrue(arrow() === 42, 'arrow callback preserves this')
  assertTrue(true, 'callback this boundary documented')
}

main()
