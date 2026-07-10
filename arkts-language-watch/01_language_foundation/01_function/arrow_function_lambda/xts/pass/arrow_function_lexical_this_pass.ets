/*
 * Function Stage 2
 * Coverage: arrow function lexical this.
 * Expected: arrow callback reads this from the surrounding method.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

class Counter {
  value: number = 9

  readWithArrow(): number {
    let read: () => number = (): number => this.value
    return read()
  }
}

function main(): void {
  let counter: Counter = new Counter()
  assertNumberEqual(counter.readWithArrow(), 9, 'arrow should capture lexical this')
}

main()
