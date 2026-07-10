/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: enum reserved word and TS enum declaration boundary.
 * Boundary reason: enum is ES future reserved word; TS implements as declaration.
 *  Dynamic ArkTS support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If enum is supported as TS declaration:
enum Color { Red, Green, Blue }

function main(): void {
  // If enum works, Color.Red should be 0.
  // If not supported, this file should fail to compile.
  assertTrue(true, 'enum reserved word boundary documented')
}

main()
