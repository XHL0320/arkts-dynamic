/*
 * Keyword Stage 1
 * Test point: typeof/void/delete keywords as expression operators.
 * Expected: typeof/void/delete keywords work in expression position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(typeof 42 === "number", 'typeof keyword works')
  assertTrue(void 0 === undefined, 'void keyword works')
  let obj: Record<string, number> = { x: 1 }
  assertTrue(delete obj.x === true, 'delete keyword works')
  assertTrue(!("x" in obj), 'property deleted by delete keyword')
}

main()
