/*
 * Statement Stage 1
 * Test point: do-while executes at least once even when condition is false.
 * Expected: body executes once before condition is checked.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let count: number = 0
  do {
    count++
  } while (count < 0)
  assertTrue(count === 1, 'do-while body executes at least once even with false condition')

  let total: number = 0
  let i: number = 0
  do {
    total += i
    i++
  } while (i < 4)
  assertTrue(total === 6, 'do-while sum 0+1+2+3=6')
  assertTrue(i === 4, 'i should be 4')
}

main()
