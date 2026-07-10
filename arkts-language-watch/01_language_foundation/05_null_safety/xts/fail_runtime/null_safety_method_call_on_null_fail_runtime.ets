/*
 * Null Safety Stage 1
 * Test point: method call on null throws TypeError.
 * Expected: null.method() throws TypeError at runtime.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class Service {
  execute(): void {}
}

function main(): void {
  let thrown: boolean = false
  try {
    let svc: Service | null = null
    svc.execute()
  } catch (e) {
    thrown = true
  }
  assertTrue(thrown, 'method call on null should throw TypeError')
}

main()
