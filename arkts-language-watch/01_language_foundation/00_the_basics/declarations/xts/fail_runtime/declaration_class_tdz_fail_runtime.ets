/*
 * Declaration Stage 1
 * Test point: class declaration temporal dead zone.
 * Expected: reading a class binding before declaration throws a runtime exception.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let thrown: boolean = false
  try {
    let ignored = A
  } catch (e) {
    thrown = true
  }
  class A {
  }
  assertTrue(thrown, 'expected TDZ runtime exception for class declaration')
}

main()
