/*
 * This Keyword Stage 1
 * Test point: nested arrow preserves this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class NestedArrow {
  value: number = 77
  outer(): () => () => number {
    return (): (() => number) => {
      return (): number => this.value
    }
  }
}

function main(): void {
  let test: NestedArrow = new NestedArrow()
  let inner: () => number = test.outer()()
  assertTrue(inner() === 77, 'nested arrow preserves this')
}

main()
