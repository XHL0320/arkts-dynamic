/*
 * Keyword Stage 1
 * Test point: var keyword as declaration keyword.
 * Expected: var keyword can be used in declaration position.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  var x: number = 10
  assertTrue(x === 10, 'var declaration keyword works')
  var y: string = "hello"
  assertTrue(y === "hello", 'var string declaration')
}

main()
