/*
 * Statement Stage 1
 * Test point: for-of iterates array elements.
 * Expected: for-of iterates over array values (not indices).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let arr: number[] = [10, 20, 30]
  let sum: number = 0
  for (let item of arr) {
    sum += item
  }
  assertTrue(sum === 60, 'sum should be 10+20+30=60')
}

main()
