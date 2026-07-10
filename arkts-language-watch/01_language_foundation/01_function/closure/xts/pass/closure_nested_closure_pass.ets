/*
 * Function Stage 2
 * Coverage: nested closure captures multiple lexical levels.
 * Expected: innermost function can read both outer and middle bindings.
 */
function assertStringEqual(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message + ', actual=' + actual + ', expected=' + expected)
  }
}

function outer(): () => string {
  let a: string = 'A'
  function middle(): () => string {
    let b: string = 'B'
    return function(): string {
      return a + b
    }
  }
  return middle()
}

function main(): void {
  let read: () => string = outer()
  assertStringEqual(read(), 'AB', 'nested closure should capture multiple levels')
}

main()
