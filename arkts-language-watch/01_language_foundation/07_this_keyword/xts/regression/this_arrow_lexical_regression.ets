/*
 * This Keyword Stage 1
 * Regression test.
 * Test point: arrow lexical this regression.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class RegressionArrow {
  value: number = 42
  outer(): () => number {
    let inner = (): number => {
      let deepest = (): number => this.value
      return deepest()
    }
    return inner
  }
}

function main(): void {
  let test: RegressionArrow = new RegressionArrow()
  let fn: () => number = test.outer()
  assertTrue(fn() === 42, 'regression: deep nested arrow preserves this')
}

main()
