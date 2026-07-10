/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: TypeScript this parameter boundary.
 * Boundary reason: dynamic ArkTS this parameter support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ThisParamTest {
  value: number = 42
  // If this parameter is supported:
  // check(this: ThisParamTest): number { return this.value }
  check(): number { return this.value }
}

function main(): void {
  let test: ThisParamTest = new ThisParamTest()
  assertTrue(test.check() === 42, 'method this works without this parameter')
  assertTrue(true, 'this parameter boundary documented')
}

main()
