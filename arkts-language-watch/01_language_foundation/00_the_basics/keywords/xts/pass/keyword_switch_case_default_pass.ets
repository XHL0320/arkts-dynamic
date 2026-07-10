/*
 * Keyword Stage 1
 * Test point: switch/case/default keywords in valid positions.
 * Expected: switch/case/default keywords work as multi-branch statement.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let x: number = 2
  let result: string = ""
  switch (x) {
    case 1: result = "one"; break
    case 2: result = "two"; break
    default: result = "other"
  }
  assertTrue(result === "two", 'switch/case/default keywords work')
}

main()
