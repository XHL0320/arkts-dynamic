/*
 * Operator Stage 1
 * Test point: NaN relational comparison is always false.
 * Expected: NaN < 1 === false, NaN > 1 === false, NaN <= 1 === false, NaN >= 1 === false.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let nan: number = NaN
  assertFalse(nan < 1, 'NaN < 1 is false')
  assertFalse(nan > 1, 'NaN > 1 is false')
  assertFalse(nan <= 1, 'NaN <= 1 is false')
  assertFalse(nan >= 1, 'NaN >= 1 is false')
  assertFalse(nan < nan, 'NaN < NaN is false')
  assertFalse(nan > nan, 'NaN > NaN is false')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
