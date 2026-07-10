/*
 * Function Stage 2
 * Coverage: nested arrow function regression.
 * Expected: nested arrows preserve captured lexical bindings.
 */
function assertNumberEqual(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function createAdder(base: number): (value: number) => number {
  let outer: (step: number) => (value: number) => number = (step: number): (value: number) => number => {
    return (value: number): number => base + step + value
  }
  return outer(2)
}

function main(): void {
  let add: (value: number) => number = createAdder(3)
  assertNumberEqual(add(4), 9, 'nested arrow should preserve lexical bindings')
}

main()
