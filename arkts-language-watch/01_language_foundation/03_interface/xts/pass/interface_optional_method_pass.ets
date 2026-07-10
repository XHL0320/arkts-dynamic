/*
 * Interface Stage 1
 * Test point: interface with optional method.
 * Expected: optional method can be omitted in implementation.
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
