/*
 * Declaration Stage 1
 * Test point: module top-level lexical declarations.
 * Expected: top-level let and const bindings are readable after initialization.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let moduleLet: number = 1
const moduleConst: number = 2

function main(): void {
  assertTrue(moduleLet === 1, 'top-level let should be initialized')
  assertTrue(moduleConst === 2, 'top-level const should be initialized')
}

main()
