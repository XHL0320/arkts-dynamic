/*
 * Operator Stage 1
 * Test point: typeof function returns "function".
 * Expected: typeof function(){} === "function", typeof class {} === "function".
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function myFunc(): void {}

class MyClass {}

function main(): void {
  assertTrue(typeof myFunc === "function", 'typeof named function')
  assertTrue(typeof function() {} === "function", 'typeof anonymous function')
  assertTrue(typeof arrow === "function", 'typeof arrow function')
  assertTrue(typeof MyClass === "function", 'typeof class is function')
  assertTrue(typeof {} === "object", 'typeof object')
  assertTrue(typeof [] === "object", 'typeof array is object')
}

let arrow = (): void => {}

main()
