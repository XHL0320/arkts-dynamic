/*
 * Declaration Stage 1
 * Regression candidate.
 * Test point: TDZ reference should be observable as runtime exception and should not be optimized away.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function readBeforeInit(): boolean {
  try {
    let ignored = value
  } catch (e) {
    return true
  }
  let value: number = 1
  return false
}

function main(): void {
  assertTrue(readBeforeInit(), 'TDZ reference should throw before initialization')
}

main()
