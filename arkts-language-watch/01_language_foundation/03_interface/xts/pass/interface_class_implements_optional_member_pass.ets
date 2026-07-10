/*
 * Interface Stage 1
 * Test point: class implements interface with optional member omitted.
 * Expected: optional member can be omitted in class implementation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Service {
  required(): void
  optional?(): void
}

class MyService implements Service {
  required(): void { /* implementation */ }
  // optional is omitted - should compile
}

function main(): void {
  let svc: Service = new MyService()
  svc.required()
  assertTrue(svc.optional === undefined, 'optional method is undefined')
}

main()
