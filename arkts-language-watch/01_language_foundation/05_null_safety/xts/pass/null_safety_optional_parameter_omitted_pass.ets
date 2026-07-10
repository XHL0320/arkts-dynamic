/*
 * Null Safety Stage 1
 * Test point: optional parameter omitted is undefined.
 * Expected: omitted optional parameter is undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function greet(name: string, greeting?: string): string {
  if (greeting === undefined) {
    return "Hello " + name
  }
  return greeting + " " + name
}

function main(): void {
  assertTrue(greet("Alice") === "Hello Alice", 'optional parameter omitted')
  assertTrue(greet("Bob", "Hi") === "Hi Bob", 'optional parameter provided')
  assertTrue(greet("Carol", undefined) === "Hello Carol", 'optional parameter explicit undefined')
}

main()
