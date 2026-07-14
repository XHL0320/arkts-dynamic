/*
 * Case ID: INTF-PASS-008
 * Coverage ID:
 *   - IF-OPTMETHOD-001
 *   - IF-OPTMETHOD-002
 * Feature: interface
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 03_interface
 * Related Chapters: function
 * Spec Source: pending
 * Description: Verify optional method declaration and omission behavior.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Logger {
  log(msg: string): void
  debug?(msg: string): void
}

class ConsoleLogger implements Logger {
  log(msg: string): void { /* log implementation */ }
  // debug is optional, can be omitted
}

function main(): void {
  let logger: Logger = new ConsoleLogger()
  logger.log("test")
  assertTrue(logger.debug === undefined, 'optional method is undefined when omitted')
}

main()
