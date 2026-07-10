/*
 * Keyword Stage 1
 * Test point: function keyword as declaration keyword.
 * Expected: function keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function myFunc(): number { return 42 }

function main(): void {
  assertTrue(myFunc() === 42, 'function declaration keyword works')
  let result: number = myFunc()
  assertTrue(result === 42, 'function return value')
}

main()
