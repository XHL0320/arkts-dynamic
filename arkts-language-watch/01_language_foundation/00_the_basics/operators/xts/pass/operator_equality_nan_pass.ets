/*
 * Operator Stage 1
 * Test point: NaN equality is always false.
 * Expected: NaN !== NaN, NaN != NaN.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let nan: number = NaN
  assertFalse(nan === nan, 'NaN is not strictly equal to itself')
  assertFalse(nan == nan, 'NaN is not loosely equal to itself')
  assertTrue(nan !== nan, 'NaN is strictly not equal to itself')
}

function assertFalse(value: boolean, message: string): void {
  if (value) {
    throw new Error(message)
  }
}

main()
