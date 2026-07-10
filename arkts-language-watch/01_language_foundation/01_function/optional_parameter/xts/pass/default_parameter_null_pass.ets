/*
 * Function Stage 1
 * Test point: null does not trigger default parameter.
 * Expected: null is passed as the actual argument.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function isNull(v: Object | null = new Object()): boolean {
  return v === null
}

function main(): void {
  assertTrue(isNull(null), 'null should not trigger default parameter')
}

main()
