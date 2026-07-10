/*
 * This Keyword Stage 1
 * Test point: arrow function lexical this.
 * Expected: arrow captures outer this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class ArrowTest {
  value: number = 99
  getArrow(): () => number {
    return (): number => this.value
  }
}

function main(): void {
  let test: ArrowTest = new ArrowTest()
  let fn: () => number = test.getArrow()
  assertTrue(fn() === 99, 'arrow captures outer this')
}

main()
