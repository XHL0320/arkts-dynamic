/*
 * Operator Stage 1
 * Test point: undefined arithmetic produces NaN.
 * Expected: undefined + 1 is NaN.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: number = undefined + 1
  assertTrue(result !== result, 'undefined + 1 should be NaN')
  let product: number = undefined * 2
  assertTrue(product !== product, 'undefined * 2 should be NaN')
}

main()
