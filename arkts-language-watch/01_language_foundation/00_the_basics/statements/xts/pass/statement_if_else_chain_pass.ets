/*
 * Statement Stage 1
 * Test point: if / else if / else chain matching.
 * Expected: only the first matching branch executes.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function classify(x: number): string {
  if (x < 0) {
    return "negative"
  } else if (x === 0) {
    return "zero"
  } else if (x < 10) {
    return "small"
  } else {
    return "large"
  }
}

function main(): void {
  assertTrue(classify(-5) === "negative", 'negative branch')
  assertTrue(classify(0) === "zero", 'zero branch')
  assertTrue(classify(5) === "small", 'small branch')
  assertTrue(classify(100) === "large", 'large branch')
}

main()
