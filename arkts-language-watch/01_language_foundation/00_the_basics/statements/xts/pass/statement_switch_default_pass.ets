/*
 * Statement Stage 1
 * Test point: switch default executes when no case matches.
 * Expected: default branch runs when no case matches.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let result: string = ""
  let x: number = 99
  switch (x) {
    case 1: result = "one"; break
    case 2: result = "two"; break
    default: result = "default"
  }
  assertTrue(result === "default", 'default should execute when no case matches')
}

main()
