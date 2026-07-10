/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: interface strict mode reserved word boundary.
 * Boundary reason: interface is strict mode reserved word in ES; TS implements as type declaration.
 *  Dynamic ArkTS support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If interface is supported as TS type declaration:
interface MyInterface {
  value: number
  method(): string
}

function main(): void {
  // If interface works, it should be usable as a type.
  // If not supported, this file should fail to compile.
  assertTrue(true, 'interface strict reserved word boundary documented')
}

main()
