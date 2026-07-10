/*
 * Declaration Stage 1
 * Test point: function declaration hoisting as a declaration binding rule.
 * Expected: function declaration can be called before its declaration.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  assertTrue(add(1, 2) === 3, 'function declaration should be hoisted')
}

function add(a: number, b: number): number {
  return a + b
}

main()
