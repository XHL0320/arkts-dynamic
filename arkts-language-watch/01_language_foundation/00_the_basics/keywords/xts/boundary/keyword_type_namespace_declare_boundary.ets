/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: type/namespace/declare keywords as TS contextual keywords.
 * Boundary reason: these are TS extensions not in ES spec.
 *  Dynamic ArkTS support status needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

// If type alias is supported:
type MyType = number | string

// If namespace is supported:
namespace MyNamespace {
  export let value: number = 42
}

// If declare is supported:
declare var externalVar: number

function main(): void {
  // If type/namespace/declare work, they should compile.
  // If not supported, this file should fail to compile.
  assertTrue(true, 'type/namespace/declare keyword boundary documented')
}

main()
