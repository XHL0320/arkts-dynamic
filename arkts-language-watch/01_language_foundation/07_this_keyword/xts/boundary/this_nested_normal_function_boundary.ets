/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: nested normal function this boundary.
 * Boundary reason: inner function has its own this, may lose outer this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Outer {
  value: number = 42
  outerMethod(): number {
    function inner(): Object | undefined { return this }
    let innerThis: Object | undefined = inner()
    // inner's this is NOT outer's this (it's undefined or globalThis)
    assertTrue(innerThis === undefined || innerThis === globalThis, 'inner function this differs from outer')
    return this.value
  }
}

function main(): void {
  let o: Outer = new Outer()
  assertTrue(o.outerMethod() === 42, 'outer this preserved, inner this differs')
}

main()
