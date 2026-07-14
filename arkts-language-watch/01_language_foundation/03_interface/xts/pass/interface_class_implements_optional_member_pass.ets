/*
 * Case ID: INTF-PASS-001
 * Coverage ID:
 *   - IF-IMPL-001
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: class
 * Spec Source: pending
 * Description: Verify class implements interface with optional member.
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
